package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.AssociateWord;
import edu.hsd.associate.vo.AssociateWordVo;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.junit4.SpringRunner;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

/**
 * @author 曹成成
 * @date 2019/8/14 9:43
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class AssociateWordServiceImplTest {

    @Autowired
    AssociateWordServiceImpl associateWordService;

    @Test
    public void findAll() {
        List<AssociateWord> associateWordList = associateWordService.findAll();
        Assert.assertNotEquals(0, associateWordList.size());
    }

    @Test
    public void findAllForPage(){
        Pageable pageable = PageRequest.of(1,2);
        Page<AssociateWordVo> associateWordPage = associateWordService.findAll(pageable);
        Assert.assertNotEquals(0, associateWordPage.getTotalElements());

    }

    @Test
    @Transactional
    public void save() {
        AssociateWord associateWord = associateWordService.save(new AssociateWord("美丽",1));
        Assert.assertNotNull(associateWord);
    }

    @Test
    @Transactional
    public void deleteById() {
        associateWordService.deleteById(new Integer(3));
    }

    @Test
    @Transactional
    public void deleteByIdIn() {
        List<Integer> ids = new ArrayList<>();
        ids.add(1);
        ids.add(2);
        associateWordService.deleteByIdIn(ids);

    }
}