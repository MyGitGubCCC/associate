package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Associate;
import edu.hsd.associate.dataobject.AssociateWord;
import edu.hsd.associate.vo.AssociateFieldVo;
import edu.hsd.associate.vo.AssociateWordVo;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.*;
import org.springframework.test.context.junit4.SpringRunner;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

/**
 * @author 曹成成
 * @date 2019/8/21 9:04
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class AssociateRepositoryTest {

    @Autowired
    private AssociateRepository associateRepository;
    @Test
    public void findAllAssociateWord() {
        Pageable pageable = PageRequest.of(0,10);
        Page<Object[]> PageAssociateWordList = associateRepository.findAllAssociateWord("","", pageable);
        Assert.assertNotNull(PageAssociateWordList);

        List<Object[]> associateWordList = PageAssociateWordList.getContent();

        List<AssociateWordVo> associateWordVoList = new ArrayList<>();
        for (Object[] objects : associateWordList) {
            AssociateWordVo associateWordVo = new AssociateWordVo();
            associateWordVo.setAssociateWord((String) objects[0]);
            associateWordVo.setAssociatePosName((String)objects[1]);
            associateWordVoList.add(associateWordVo);
        }

        Page<AssociateWordVo> associateWordVoPage = new PageImpl<>(associateWordVoList,pageable,PageAssociateWordList.getTotalElements());
        for (AssociateWordVo associateWordVo : associateWordVoList) {
            System.out.println(associateWordVo);
        }
        //Associate associate = associateRepository
    }

    @Test
    public void findAssociateFieldByAssociate(){
        Pageable pageable = PageRequest.of(0,10);
        Page<Object[]> pageObject = associateRepository.findAssociateFieldByAssociate("被子", pageable);

        //转换为AssociateFieldVo类型的page对象
        List<AssociateFieldVo> associateFieldVoList = new ArrayList<>();
        for (Object[] objects : pageObject) {
            AssociateFieldVo associateFieldVo = new AssociateFieldVo();
            associateFieldVo.setAssociateWord((String) objects[0]);
            associateFieldVo.setReactionWord((String) objects[1]);
            associateFieldVo.setReactionPos((String) objects[2]);
            associateFieldVo.setReactionWordNumber((BigInteger) objects[3]);
            //判断反应词是否是联想词
            Associate associate = new Associate();
            associate.setAssociateWord((String)objects[1]);
            Example<Associate> example = Example.of(associate);
            boolean b = associateRepository.exists(example);
            if (b)
                associateFieldVo.setReactionIsAssociate(1);
            associateFieldVoList.add(associateFieldVo);
        }

        Page<AssociateFieldVo> associateFieldVoPage = new PageImpl<>(associateFieldVoList, pageable, pageObject.getTotalElements());

        Assert.assertNotNull(associateFieldVoPage);
    }
}