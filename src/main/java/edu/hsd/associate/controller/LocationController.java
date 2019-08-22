package edu.hsd.associate.controller;

import edu.hsd.associate.dataobject.Location;
import edu.hsd.associate.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 20:05
 */
@RestController
@RequestMapping("/location")
public class LocationController {

    @Autowired
    private LocationService locationService;

    @RequestMapping("/findAll")
    public List<Location> findAll(){
        return locationService.findAll();
    }
}
