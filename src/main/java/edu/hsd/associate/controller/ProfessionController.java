package edu.hsd.associate.controller;

import edu.hsd.associate.service.ProfessionService;
import edu.hsd.associate.vo.ProfessionVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 15:05
 */
@RestController
@RequestMapping("/profession")
public class ProfessionController {

    @Autowired
    private ProfessionService professionService;

    @RequestMapping("/treeProfession")
    public List<ProfessionVo> findTreeProfession(){
        List<ProfessionVo> professionVoList = professionService.findTreeProfession();
        return professionVoList;
    }
}
