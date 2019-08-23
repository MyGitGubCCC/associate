package edu.hsd.associate.controller;

import edu.hsd.associate.dataobject.Language;
import edu.hsd.associate.dataobject.Psq;
import edu.hsd.associate.dataobject.Psqtype;
import edu.hsd.associate.enums.ResultEnum;
import edu.hsd.associate.exception.PsqException;
import edu.hsd.associate.form.PsqForm;
import edu.hsd.associate.service.PsqService;
import edu.hsd.associate.utils.ConvertUtils;
import edu.hsd.associate.vo.DataGrid;
import edu.hsd.associate.vo.MessageVo;
import edu.hsd.associate.vo.PsqVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/17 21:19
 */
@RestController
@RequestMapping("/psq")
@Slf4j
public class PsqController {

    @Autowired
    private PsqService psqService;

    /**
     * 查询问卷列表
     * @param psqName
     * @param psqtypeId
     * @param languageId
     * @param psqState
     * @param page
     * @param size
     * @return
     */
    @GetMapping("/psqPageList")
    public DataGrid psqPageList(@RequestParam(value = "psqName",defaultValue = "")String psqName,
                            @RequestParam(value = "psqtypeId",defaultValue = "0")Integer psqtypeId,
                            @RequestParam(value = "languageId",defaultValue = "0")Integer languageId,
                            @RequestParam(value = "psqState", defaultValue = "-1")Integer psqState,
                            @RequestParam(value = "page") Integer page,
                            @RequestParam(value = "rows") Integer size){
        Pageable pageRequest = PageRequest.of(page - 1, size);
        //封装查询条件的psq
        Psq psq = new Psq();
        if (!psqName.equals(""))
            psq.setPsqName(psqName);
        if (psqtypeId != 0 ) {
            Psqtype psqtype = new Psqtype();
            psqtype.setPsqtypeId(psqtypeId);
            psq.setPsqtype(psqtype);
        }
        if (languageId != 0){
            Language language = new Language();
            language.setLanguageId(languageId);
            psq.setLanguage(language);
        }
        if (psqState != -1) psq.setPsqState(psqState);

        Page<PsqVo> psqPage = psqService.findAllPage(pageRequest,psq);
        //封装为easyui需要的格式，总数和当前值列表
        return ConvertUtils.Page2DataGrid(psqPage);
    }

    @GetMapping("/findAll")
    public List<Psq> findAll(){
        return psqService.findAll();
    }

    @PostMapping("/addPsq")
    public MessageVo addPsg(@Valid PsqForm psqForm, BindingResult result){
        if (result.hasErrors()){
             log.error("添加问卷，参数不正确，psqForm={}",psqForm);
             throw new PsqException(ResultEnum.PARAM_ERROR.getCode(),
                     result.getFieldError().getDefaultMessage());
        }
        Psq psq = ConvertUtils.PsqForm2Psq(psqForm);
        Psq p = psqService.addPsq(psq);
        MessageVo messageVo;
        if (p != null){
            messageVo = new MessageVo(true, "添加成功！");
        }else {
            messageVo = new MessageVo(false, "添加失败！");
        }
        return messageVo;
    }

    @PostMapping("/findOnePsq")
    public PsqVo findOnePsq(@RequestParam("psqId")Integer psqId){
        Psq psq = psqService.findByPsqId(psqId);
        PsqVo psqVo = ConvertUtils.Psq2PsqVo(psq);
        return psqVo;
    }

    @PostMapping("/deletePsq")
    public MessageVo deletePsq(@RequestParam("psqId")String psqId){
        List<Integer> ids = ConvertUtils.Strings2ListInt(psqId);
        MessageVo messageVo = new MessageVo(true, "删除成功！");
        try {
            psqService.deleteByIdIn(ids);
        }catch (Exception e){
            log.error("删除问卷失败！" + e);
            messageVo = new MessageVo(false, "删除失败！");
        }
        return messageVo;
    }

    @PostMapping("/updatePsqState")
    public MessageVo updatePsqState(@RequestParam("psqId")Integer psqId,
                                    @RequestParam("psqState")Integer psqState){
        Psq p = new Psq();
        p.setPsqId(psqId);
        p.setPsqState(psqState);
        Psq psq = psqService.updatePsqState(p);
        MessageVo messageVo;
        if (psq != null){
            messageVo = new MessageVo(true, "修改成功！");
        }else {
            messageVo = new MessageVo(false, "修改失败！");
        }
        return messageVo;
    }
}
