package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.AssociateWord;
import edu.hsd.associate.repository.AssociateWordRepository;
import edu.hsd.associate.repository.PosRepository;
import edu.hsd.associate.service.AssociateWordService;
import edu.hsd.associate.vo.AssociateWordVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
public class AssociateWordServiceImpl implements AssociateWordService {

    @Autowired
    private AssociateWordRepository associateWordRepository;
    @Autowired
    private PosRepository posRepository;

    @Override
    public List<AssociateWord> findAll() {
        return associateWordRepository.findAll();
    }

    @Override
    public Page<AssociateWordVo> findAll(Pageable pageable) {
        Page<AssociateWord> associateWordPage = associateWordRepository.findAll(pageable);
        //转换成AssociateWordVo的page对象
        return getAssociateWordVos(pageable, associateWordPage);
    }

    /**
     * 根据联想词和词性查询
     * @param pageable
     * @param word
     * @param posId
     * @return
     */
    @Override
    public Page<AssociateWordVo> findAllByAssociateWordAndPosId(Pageable pageable, String word, Integer posId) {
        AssociateWord associateWord1 = new AssociateWord();
        if (posId != 0)
            associateWord1.setAssociatePosId(posId);
        if (!word.equals(""))
            associateWord1.setAssociateWord(word);
        Example<AssociateWord> example = Example.of(associateWord1);
        Page<AssociateWord> associateWordPage = associateWordRepository.findAll(example, pageable);
        //转换成AssociateWordVo的page对象
        return getAssociateWordVos(pageable, associateWordPage);
    }

    /**
     * 根据联想词和词性搜索，按照联想词中文排序
     * @param pageable
     * @param associateWord
     * @param posId
     * @return
     */
    @Override
    public Page<AssociateWordVo> findAllSortAssociateWord(Pageable pageable, String associateWord, Integer posId) {
        Page<AssociateWord> associateWordPage = associateWordRepository.findAllSortAssociateWord(associateWord,posId,pageable);
        //转换成AssociateWordVo的page对象
        return getAssociateWordVos(pageable, associateWordPage);
    }

    @Override
    public AssociateWord save(AssociateWord associateWord) {
        return associateWordRepository.save(associateWord);
    }

    @Override
    @Transactional
    public void deleteById(Integer associateWordId) {
        associateWordRepository.deleteById(associateWordId);
    }

    @Override
    @Transactional
    public void deleteByIdIn(List<Integer> ids) {
        associateWordRepository.deleteByAssociateWordIdIn(ids);
    }

    /**
     * Page<AssociateWord> 转换为 Page<AssociateWordVo>
     * @param pageable
     * @param associateWordPage
     * @return
     */
    private Page<AssociateWordVo> getAssociateWordVos(Pageable pageable, Page<AssociateWord> associateWordPage) {
        List<AssociateWordVo> associateWordVoList = new ArrayList<>();
        for (AssociateWord word : associateWordPage.getContent()) {
            associateWordVoList.add(new AssociateWordVo(word.getAssociateWordId(), word.getAssociateWord(),
                    posRepository.getOne(word.getAssociatePosId()).getPosName()));
        }
        return new PageImpl<AssociateWordVo>(associateWordVoList, pageable, associateWordPage.getTotalElements());
    }
}
