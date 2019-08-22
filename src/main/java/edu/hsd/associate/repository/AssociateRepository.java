package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Associate;
import edu.hsd.associate.vo.AssociateWordVo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 8:56
 */
public interface AssociateRepository extends JpaRepository<Associate, Integer> {

    /**
     * 查询出联想场中的所有联想词
     * @param associateWord
     * @param associatePos
     * @param pageable
     * @return
     */
    @Query(value = "select distinct associate_word, associate_pos from associate where 1=1 "+
            "and if(?1!='', associate_word like concat('%',?1,'%'),1=1) " +
            "and if(?2!='', associate_pos = ?2, 1=1) " +
            "order by convert(associate_word using gbk) asc", nativeQuery = true)
    Page<Object[]> findAllAssociateWord(String associateWord, String associatePos, Pageable pageable);

    /**
     * 根据联想词查出联想场
     * @param associateWord
     * @param pageable
     * @return
     */
    @Query(value = "select associate_word, reaction_word,  associate_pos, count(*) c from associate " +
            "where associate_word = ?1 and reaction_word != '' GROUP BY reaction_word " +
            "ORDER BY c desc, convert(reaction_word using gbk) asc", nativeQuery = true)
    Page<Object[]> findAssociateFieldByAssociate(String associateWord, Pageable pageable);

}
