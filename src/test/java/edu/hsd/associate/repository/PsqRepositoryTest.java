package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Language;
import edu.hsd.associate.dataobject.Psq;
import edu.hsd.associate.dataobject.Psqtype;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import static org.junit.Assert.*;

/**
 * @author 曹成成
 * @date 2019/8/17 20:38
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class PsqRepositoryTest {
    @Autowired
    private PsqRepository psqRepository;

    @Test
    public void findAll(){
        List<Psq> psqList = psqRepository.findAll();
        Assert.assertNotNull(psqList);
    }

    @Test
    public void addPsqTest(){
        Psq psq = new Psq();
        psq.setPsqContent("1-12-3");
        Psqtype psqtype = new Psqtype();
        psqtype.setPsqtypeId(1);
        psq.setPsqtype(psqtype);
        psq.setPsqState(0);
        Language language = new Language();
        language.setLanguageId(2);
        psq.setLanguage(language);
        /*Optional<Psq> psqOptional = psqRepository.findById(12);
        Psq psq = psqOptional.get();*/
        //psq.setReleaseTime(new Date());
        psq.setPsqName("问卷8");
        Psq psq1 = psqRepository.save(psq);
        Assert.assertNotNull(psq1);
    }
}