package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Grade;
import edu.hsd.associate.repository.GradeRepository;
import edu.hsd.associate.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 19:10
 */
@Service
public class GradeServiceImpl implements GradeService {

    @Autowired
    private GradeRepository gradeRepository;

    @Override
    public List<Grade> findAll() {
        List<Grade> gradeList = gradeRepository.findAll();
        return gradeList;
    }
}
