package edu.hsd.associate.controller;

import edu.hsd.associate.service.AreaService;
import edu.hsd.associate.vo.AreaVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/22 13:55
 */
@RestController
@RequestMapping("/area")
public class AreaController {

    @Autowired
    private AreaService areaService;

    @RequestMapping("/findTreeArea")
    public List<AreaVo> findTreeArea(){
        return areaService.findTreeAreaVo();
    }
}
