package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Psqtype;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/17 15:55
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class PsqtypeRepositoryTest {

    @Autowired
    private PsqtypeRepository psqtypeRepository;
    @Test
    public void findAll(){
        List<Psqtype> psqList = psqtypeRepository.findAll();
        Assert.assertNotNull(psqList);
    }
}