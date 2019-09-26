package edu.hsd.associate.controller;

import edu.hsd.associate.dto.AssociateDTO;
import edu.hsd.associate.service.AssociateService;
import edu.hsd.associate.utils.ConvertUtils;
import edu.hsd.associate.vo.AssociateFieldResultVo;
import edu.hsd.associate.vo.AssociateFieldVo;
import edu.hsd.associate.vo.AssociateWordVo;
import edu.hsd.associate.vo.DataGrid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.*;

/**
 * @author 曹成成
 * @date 2019/8/21 10:10
 */
@RestController
@RequestMapping("/associate")
public class AssociateController {

    @Autowired
    private AssociateService associateService;

    @GetMapping("/findAllAssociateWord")
    public DataGrid findAllAssociateWord(@RequestParam(value = "associateWord", defaultValue = "")String associateWord,
                                         @RequestParam(value = "associatePos", defaultValue = "")String associatePosId,
                                         @RequestParam(value = "page") Integer page,
                                         @RequestParam(value = "rows") Integer size){
        PageRequest pageRequest = PageRequest.of(page - 1, size);
        Page<AssociateWordVo> associateWordVoPage = associateService.findAllAssociateWord(pageRequest,associateWord,associatePosId);
        //按照联想词排序
        // 不能在这排序,这里已经查询到了页数了
        //Collections.sort(associateWordVo, (o1, o2) -> Collator.getInstance(Locale.CHINESE).compare(o1.getAssociateWord(), o2.getAssociateWord()));
        return ConvertUtils.Page2DataGrid(associateWordVoPage);
    }

    /**
     * 分页联想场
     * @param associateDTO
     * @param page
     * @param size
     * @return
     */
    @GetMapping("/outPutPageAssociateField")
    public DataGrid outPutPageAssociateField(AssociateDTO associateDTO,
                                         @RequestParam(value = "page") Integer page,
                                         @RequestParam(value = "rows") Integer size){
        defaultAssociate(associateDTO);

        PageRequest pageRequest = PageRequest.of(page - 1, size);
        Page<AssociateFieldVo> associateFieldVoPage = associateService.findAssociateField(pageRequest,associateDTO);
        return ConvertUtils.Page2DataGrid(associateFieldVoPage);
    }

    /**
     * 联想场
     * @param associateDTO
     * @return
     */
    @GetMapping("/outPutAssociateField")
    public AssociateFieldResultVo outPutAssociateField(AssociateDTO associateDTO){
        defaultAssociate(associateDTO);
        AssociateFieldResultVo associateFieldResultVo = associateService.findAssociateField(associateDTO);
        return associateFieldResultVo;
    }

    private void defaultAssociate(AssociateDTO associateDTO) {
        //associateDTO赋初值
        if (associateDTO.getReactionWord() == null || associateDTO.getReactionWord().equals(""))
            associateDTO.setReactionWord("");
        if (associateDTO.getSchoolName() == null || associateDTO.getSchoolName().equals(""))
            associateDTO.setSchoolName("");
        if (associateDTO.getReactionPos() == null || associateDTO.getReactionPos().equals(""))
            associateDTO.setReactionPos("");
        if (associateDTO.getGradeId() == null)
            associateDTO.setGradeId(0);
        if (associateDTO.getPsqId() == null)
            associateDTO.setPsqId(0);
        if (associateDTO.getProfessionId() == null)
            associateDTO.setProfessionId(0);
        if (associateDTO.getOriginAreaId() == null)
            associateDTO.setOriginAreaId(0);
        if (associateDTO.getOriginLocationId() == null)
            associateDTO.setOriginLocationId(0);
        if (associateDTO.getPresentAreaId() == null)
            associateDTO.setPresentAreaId(0);
        if (associateDTO.getPresentLocationId() == null)
            associateDTO.setPresentLocationId(0);
        if (associateDTO.getAge1() == null )
            associateDTO.setAge1(Integer.MIN_VALUE);
        if (associateDTO.getAge2() == null)
            associateDTO.setAge2(Integer.MAX_VALUE);
        if (associateDTO.getSex() == null)
            associateDTO.setSex(-1);
        if (associateDTO.getJobId() == null)
            associateDTO.setJobId(0);
        if (associateDTO.getNationId() == null)
            associateDTO.setNationId(0);
    }
}
