package edu.hsd.associate.controller;

import edu.hsd.associate.dataobject.Pos;
import edu.hsd.associate.service.PosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/15 18:56
 */
@RestController
@RequestMapping("/pos")
public class PosController {
    @Autowired
    private PosService posService;

    @GetMapping("/posList")
    public List<Pos> getPosList(){
        List<Pos> posList = posService.findAll();
        return posList;
    }

}
