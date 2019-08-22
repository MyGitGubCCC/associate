package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.AssociateWord;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AssociateWordRepository extends JpaRepository<AssociateWord, Integer> {

        void deleteByAssociateWordIdIn(List<Integer> AssociateWordIds);

        //按照联想词中文排序
        @Query(value = "select * from associate_word where 1=1 " +
                "and if(?1!='', associate_word.associate_word like concat('%',?1,'%'),1=1) " +
                "and if(?2!=0, associate_word.associate_pos_id = ?2, 1=1) " +
                "order by convert(associate_word.associate_word using gbk) asc", nativeQuery = true)
        Page<AssociateWord> findAllSortAssociateWord(String associateWord, Integer posId, Pageable pageable);
}
