package edu.hsd.associate.controller;

import edu.hsd.associate.dataobject.Psqtype;
import edu.hsd.associate.service.PsqtypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/17 17:10
 */
@RestController
@RequestMapping("/psqtype")
public class PsqtypeController {

    @Autowired
    private PsqtypeService psqtypeService;

    @RequestMapping("/psqtypeList")
    public List<Psqtype> psqtypeList(){
        List<Psqtype> psqtypeList = psqtypeService.findAll();
        return psqtypeList;
    }
}
