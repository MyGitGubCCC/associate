package edu.hsd.associate.service;

import edu.hsd.associate.dataobject.AssociateWord;
import edu.hsd.associate.vo.AssociateWordVo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface AssociateWordService {

    List<AssociateWord> findAll();

    Page<AssociateWordVo> findAll(Pageable pageable);

    Page<AssociateWordVo> findAllByAssociateWordAndPosId(Pageable pageable, String associateWord, Integer posId);

    /**
     * 查询出所有联想词库中的联想词
     * @param pageable
     * @param associateWord
     * @param posId
     * @return
     */
    Page<AssociateWordVo> findAllSortAssociateWord(Pageable pageable, String associateWord, Integer posId);

    AssociateWord save(AssociateWord associateWord);

    void deleteById(Integer associateWordId);

    void deleteByIdIn(List<Integer> ids);

}
