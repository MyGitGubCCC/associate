package edu.hsd.associate.controller;

import edu.hsd.associate.service.AssociateService;
import edu.hsd.associate.utils.ConvertUtils;
import edu.hsd.associate.vo.AssociateFieldVo;
import edu.hsd.associate.vo.AssociateWordVo;
import edu.hsd.associate.vo.DataGrid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 曹成成
 * @date 2019/8/21 10:10
 */
@RestController
@RequestMapping("/associate")
public class AssociateController {

    @Autowired
    private AssociateService associateService;

    @RequestMapping("/findAllAssociateWord")
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

    @RequestMapping("/outPutAssociateField")
    public DataGrid outPutAssociateField(@RequestParam(value = "associateWord", defaultValue = "")String associateWord,
                                         @RequestParam(value = "page") Integer page,
                                         @RequestParam(value = "rows") Integer size){
        PageRequest pageRequest = PageRequest.of(page - 1, size);
        Page<AssociateFieldVo> associateFieldVoPage = associateService.findAssociateFieldByAssociate(pageRequest,associateWord);
        //按照联想词排序
        // 不能在这排序,这里已经查询到了页数了
        //Collections.sort(associateWordVo, (o1, o2) -> Collator.getInstance(Locale.CHINESE).compare(o1.getAssociateWord(), o2.getAssociateWord()));
        return ConvertUtils.Page2DataGrid(associateFieldVoPage);
    }
}
