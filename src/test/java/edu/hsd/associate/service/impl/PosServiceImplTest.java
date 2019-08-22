package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Pos;
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
 * @date 2019/8/15 18:49
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class PosServiceImplTest {

    @Autowired
    private PosServiceImpl posService;

    @Test
    public void findAll() {
        List<Pos> posList = posService.findAll();
        Assert.assertNotNull("词性表测试",posList);
    }
}