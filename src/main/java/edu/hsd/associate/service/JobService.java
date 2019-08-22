package edu.hsd.associate.service;

import edu.hsd.associate.dataobject.Job;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 19:32
 */
public interface JobService {
    List<Job> findAll();
}
