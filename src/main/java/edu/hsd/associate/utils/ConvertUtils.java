package edu.hsd.associate.utils;

import edu.hsd.associate.dataobject.Language;
import edu.hsd.associate.dataobject.Profession;
import edu.hsd.associate.dataobject.Psq;
import edu.hsd.associate.dataobject.Psqtype;
import edu.hsd.associate.enums.PsqEnum;
import edu.hsd.associate.enums.ResultEnum;
import edu.hsd.associate.exception.ConvertUtilsException;
import edu.hsd.associate.exception.PsqException;
import edu.hsd.associate.form.PsqForm;
import edu.hsd.associate.vo.DataGrid;
import edu.hsd.associate.vo.ProfessionVo;
import edu.hsd.associate.vo.PsqContent;
import edu.hsd.associate.vo.PsqVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.data.domain.Page;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author 曹成成
 * @date 2019/8/16 10:19
 */
@Slf4j
public class ConvertUtils {

    public static List<Integer> Strings2ListInt(String sForInt){
        String[] wordIds;
        List<Integer> ids = new ArrayList<>();
        try {
            wordIds = sForInt.split(",");
            for (String id : wordIds) {
                ids.add(Integer.parseInt(id));
            }
        }catch (Exception e){
            log.error("字符串转int失败");
            throw new ConvertUtilsException(ResultEnum.STRING2INTS_FAILED);
        }
        return ids;
    }

    public static DataGrid Page2DataGrid(Page psqPage) {

        DataGrid psqDataGrid = new DataGrid<>();
        psqDataGrid.setTotal(psqPage.getTotalElements());
        psqDataGrid.setRows(psqPage.getContent());

        return psqDataGrid;
    }

    public static PsqVo Psq2PsqVo(Psq psq){
        PsqVo psqVo = new PsqVo();
        BeanUtils.copyProperties(psq, psqVo);

        String psqtypeName = psq.getPsqtype().getPsqtypeName();
        psqVo.setPsqtypeName(psqtypeName);
        String languageName = psq.getLanguage().getLanguageName();
        psqVo.setLanguageName(languageName);
        String[] strings = psq.getPsqContent().split("-");
        try {
            psqVo.setPsqNumber(Integer.parseInt(strings[strings.length-1].trim()));
        }catch (Exception e){
            log.error(e.toString());
            log.error("psq转psqVo中String转int出错，psq={}",psq);
        }
        if ( psq.getPsqtype().getPsqtypeId() != 1 && strings.length > 1){
            try {
                List<PsqContent> psqContentList = new ArrayList<>();
                for (int i = 0; i < strings.length-1; i++) {
                    psqContentList.add(new PsqContent(i, strings[i].trim()));
                }
                psqVo.setPsqContentList(psqContentList);

            }catch (Exception e){
                log.error("题目内容String转为List错误！");
                throw new PsqException(ResultEnum.PSQ_CONTENT_TO_LIST_FALSENED);
            }
        }else {
            List<PsqContent> psqContentList = new ArrayList<>();
            psqContentList.add(new PsqContent(0, psq.getPsqtype().getPsqtypeName()));
            psqVo.setPsqContentList(psqContentList);
        }

        if (psq.getPsqState() == PsqEnum.NO_REASED.getCode())
            psqVo.setPsqState(PsqEnum.NO_REASED.getMessage());
        else if (psq.getPsqState() == PsqEnum.RELEASED.getCode())
            psqVo.setPsqState(PsqEnum.RELEASED.getMessage());
        return psqVo;
    }

    public static List<PsqVo> Psqs2PsqVos(List<Psq> psqList){
        return psqList.stream().map(e -> Psq2PsqVo(e)).collect(Collectors.toList());
    }

    public static Psq PsqForm2Psq(PsqForm psqForm){
        Psq psq = new Psq();
        psq.setPsqName(psqForm.getPsqName());
        String s = psqForm.getPsqContent();
        if (s != null && !s.equals("")){
            String s1 = s.replace(",","-");
            psq.setPsqContent(s1+ "-" + psqForm.getReactionNumber());
        }else {
            psq.setPsqContent(psqForm.getReactionNumber()+"");
        }
        Psqtype psqtype = new Psqtype();
        psqtype.setPsqtypeId(psqForm.getPsqtypeId());
        psq.setPsqtype(psqtype);
        Language language = new Language();
        language.setLanguageId(psqForm.getLanguageId());
        psq.setLanguage(language);
        if (psqForm.getPsqState() == PsqEnum.RELEASED.getCode())
            psq.setPsqState(PsqEnum.RELEASED.getCode());
        else psq.setPsqState(PsqEnum.NO_REASED.getCode());
        return psq;
    }

    public static List<ProfessionVo> convertProfessionVos(List<Profession> professions) {
        List<ProfessionVo> professionVos = new ArrayList<>();
        for (Profession profession : professions) {
            ProfessionVo professionVo = new ProfessionVo();
            BeanUtils.copyProperties(profession, professionVo);
            professionVos.add(professionVo);
        }
        return professionVos;
    }
}
