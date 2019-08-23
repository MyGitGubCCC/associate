package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Psq;
import edu.hsd.associate.vo.PsqVo;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author 曹成成
 * @date 2019/8/17 20:59
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class PsqServiceImplTest {

    @Autowired
    private PsqServiceImpl psqService;

    @Test
    public void findAll() {
        Psq psq = new Psq();
//        Language language  = new Language();
//        language.setLanguageId(1);
//        psq.setLanguage(language);
        psq.setPsqName("问卷2");
        Pageable pageable = PageRequest.of(0,10);
        Page<PsqVo> psqPage = psqService.findAllPage(pageable, psq);
        Assert.assertNotNull(psqPage);
    }

    @Test
    public void updatePsqStateTest(){
        Psq psq = new Psq();
        psq.setPsqId(13);
        psq.setPsqState(1);
        Psq p = psqService.updatePsqState(psq);
        Assert.assertNotNull(p);
    }
}