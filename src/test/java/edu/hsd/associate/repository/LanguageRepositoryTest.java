package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Language;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.jpa.repository.Query;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * @author 曹成成
 * @date 2019/8/17 17:00
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class LanguageRepositoryTest {

    @Autowired
    private LanguageRepository languageRepository;

    @Test
    public void findAll(){
        List<Language> languageList = languageRepository.findAll();
        Assert.assertNotNull(languageList);
    }
}