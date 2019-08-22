package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.AssociateWord;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
//@ContextConfiguration(locations = {"classpath:logback-spring.xml"})
public class AssociateWordRepositoryTest {

    @Autowired
    private AssociateWordRepository associateWordRepository;

    @Test
    public void findByIdTest(){
        Optional<AssociateWord> associateWordOptional = associateWordRepository.findById(1);
        AssociateWord associateWord = associateWordOptional.get();
        System.out.println(associateWord);
    }

    @Test
    @Transactional
    public void saveTest(){
        AssociateWord associateWord = new AssociateWord();
        associateWord.setAssociateWordId(2);
        associateWord.setAssociateWord("非常好!");
        associateWord.setAssociatePosId(1);
        AssociateWord result = associateWordRepository.save(associateWord);
        Assert.assertNotNull(result);
//        Assert.assertNotEquals(null,result);
    }

    @Test
    @Transactional
    public void deleteByIdTest(){
        associateWordRepository.deleteById(2);
    }

    @Test
    @Transactional
    public void deleteByAssociateWordIdInTest(){
        List<Integer> ids = new ArrayList<>();
        ids.add(1);
        ids.add(2);
        associateWordRepository.deleteByAssociateWordIdIn(ids);
    }

    @Test
    public void queryAssociateWordsTest(){
        Pageable pageable = PageRequest.of(0,5);
        String associateWord = "";
        Integer posId = 1;
        Page<AssociateWord> associateWordPage = associateWordRepository.findAllSortAssociateWord(associateWord,posId,pageable);
        Assert.assertNotEquals(0, associateWordPage.getTotalElements());
    }
}