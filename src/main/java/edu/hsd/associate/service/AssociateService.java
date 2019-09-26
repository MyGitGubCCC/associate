package edu.hsd.associate.service;

import edu.hsd.associate.dto.AssociateDTO;
import edu.hsd.associate.vo.AssociateFieldResultVo;
import edu.hsd.associate.vo.AssociateFieldVo;
import edu.hsd.associate.vo.AssociateWordVo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * @author 曹成成
 * @date 2019/8/20 20:10
 */
public interface AssociateService {
    /**
     * 查询出所有答题中的联想词
     * @param pageable
     * @param associateWord
     * @param associatePos
     * @return
     */
    Page<AssociateWordVo> findAllAssociateWord(Pageable pageable, String associateWord, String associatePos);

    Page<AssociateFieldVo> findAssociateField(Pageable pageable, AssociateDTO associateDTO);

    AssociateFieldResultVo findAssociateField(AssociateDTO associateDTO);

}
