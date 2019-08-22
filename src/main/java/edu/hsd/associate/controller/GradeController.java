package edu.hsd.associate.controller;

import edu.hsd.associate.dataobject.Grade;
import edu.hsd.associate.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 19:14
 */
@RestController
@RequestMapping("/grade")
public class GradeController {

    @Autowired
    private GradeService gradeService;

    @RequestMapping("/findAll")
    public List<Grade> findAll(){
        List<Grade> gradeList = gradeService.findAll();
        return gradeList;
    }
}
