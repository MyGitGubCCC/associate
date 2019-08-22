package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Associate;
import edu.hsd.associate.enums.AssociateEnum;
import edu.hsd.associate.exception.AssociateException;
import edu.hsd.associate.repository.AssociateRepository;
import edu.hsd.associate.service.AssociateService;
import edu.hsd.associate.vo.AssociateFieldResultVo;
import edu.hsd.associate.vo.AssociateFieldVo;
import edu.hsd.associate.vo.AssociateWordVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 8:51
 */
@Service
public class AssociateServiceImpl implements AssociateService {

    @Autowired
    private AssociateRepository associateRepository;

    @Override
    public Page<AssociateWordVo> findAllAssociateWord(Pageable pageable, String associateWord, String associatePos) {
        Page<Object[]> PageAssociateWordList = associateRepository.findAllAssociateWord(associateWord,associatePos, pageable);

        List<Object[]> associateWordList = PageAssociateWordList.getContent();
        List<AssociateWordVo> associateWordVoList = new ArrayList<>();

        for (Object[] objects : associateWordList) {
            AssociateWordVo associateWordVo = new AssociateWordVo();
            associateWordVo.setAssociateWord((String) objects[0]);
            associateWordVo.setAssociatePosName((String)objects[1]);
            associateWordVoList.add(associateWordVo);
        }

        Page<AssociateWordVo> associateWordVoPage = new PageImpl<>(associateWordVoList,pageable,PageAssociateWordList.getTotalElements());
        return associateWordVoPage;
    }

    @Override
    public Page<AssociateFieldVo> findAssociateFieldByAssociate(Pageable pageable, String associateWord) {
        Page<Object[]> pageObject = associateRepository.findAssociateFieldByAssociate(associateWord, pageable);
        //转换为AssociateFieldVo类型的page对象
        List<AssociateFieldVo> associateFieldVoList = new ArrayList<>();
        try {
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
        }catch (Exception e){
            throw new AssociateException(AssociateEnum.CONVERT_FAILED_1);
        }
        Page<AssociateFieldVo> associateFieldVoPage = new PageImpl<>(associateFieldVoList, pageable, pageObject.getTotalElements());
        return associateFieldVoPage;
    }

    @Override
    public AssociateFieldResultVo findAssociateFieldResult(String associateWord) {
        return null;
    }
}
