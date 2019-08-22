package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Grade;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * @author 曹成成
 * @date 2019/8/21 19:12
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class GradeServiceImplTest {

    @Autowired
    private GradeServiceImpl gradeService;

    @Test
    public void findAll() {
        List<Grade> gradeList = gradeService.findAll();
        Assert.assertNotNull(gradeList);
    }
}