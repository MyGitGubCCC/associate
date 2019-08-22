package edu.hsd.associate.controller;

import edu.hsd.associate.dataobject.Nation;
import edu.hsd.associate.service.NationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 19:33
 */
@RestController
@RequestMapping("/nation")
public class NationController {

    @Autowired
    private NationService nationService;

    @RequestMapping("/findAll")
    public List<Nation> findAll(){
        return nationService.findAll();
    }
}
