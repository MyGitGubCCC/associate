package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Job;
import edu.hsd.associate.repository.JobRepository;
import edu.hsd.associate.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 19:33
 */
@Service
public class JobServiceImpl implements JobService {
    @Autowired
    private JobRepository jobRepository;

    @Override
    public List<Job> findAll() {
        return jobRepository.findAll();
    }
}
