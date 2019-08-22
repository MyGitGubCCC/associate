package edu.hsd.associate.controller;

import edu.hsd.associate.dataobject.Job;
import edu.hsd.associate.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 19:35
 */
@RestController
@RequestMapping("/job")
public class JobController {

    @Autowired
    private JobService jobService;

    @RequestMapping("/findAll")
    public List<Job> findAll(){
        return jobService.findAll();
    }
}
