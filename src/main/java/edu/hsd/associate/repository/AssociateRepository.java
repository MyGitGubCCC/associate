package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Associate;
import edu.hsd.associate.dto.AssociateDTO;
import edu.hsd.associate.vo.AssociateWordVo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

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
     * 根据联想词分页查出联想场
     * @param associateDTO
     * @param pageable
     * @return
     */
    @Query(value = "select associate.associate_word, associate.reaction_word,  associate.associate_pos, count(*) c" +
            " from profession, associate" +
            " where associate.associate_word = :#{#a.associateWord} and associate.reaction_word != ''" +
            " and if(:#{#a.reactionWord} !='', associate.reaction_word like concat('%',:#{#a.reactionWord},'%'),1=1)" +
            " and if(:#{#a.reactionPos} !='', associate.reaction_pos = :#{#a.reactionPos},1=1)" +
            " and if(:#{#a.schoolName} !='', associate.school_name  like concat('%',:#{#a.schoolName},'%'),1=1)" +
            " and if(:#{#a.gradeId} !=0, associate.grade_id = :#{#a.gradeId},1=1)" +
            " and if(:#{#a.psqId} !=0, associate.psq_id = :#{#a.psqId},1=1)" +
            " and if(:#{#a.professionId} !=0, (profession.parent_id = :#{#a.professionId} or associate.profession_id = :#{#a.professionId}),1=1)" +
            " and associate.origin_area_id in :#{#orIds}" +
            " and associate.present_area_id in :#{#preIds}" +
            " and if(:#{#a.age1} >=0, associate.age >= :#{#a.age1},1=1)" +
            " and if(:#{#a.age2} >=0, associate.age <= :#{#a.age2},1=1)" +
            " and if(:#{#a.sex} >=0, associate.sex = :#{#a.sex},1=1)" +
            " and if(:#{#a.jobId} !=0, associate.job_id = :#{#a.jobId},1=1)" +
            " and if(:#{#a.nationId} !=0, associate.nation_id = :#{#a.nationId},1=1)" +
            " and profession.profession_id = associate.profession_id" +
            " GROUP BY associate.reaction_word" +
            " ORDER BY c desc, convert(associate.reaction_word using gbk) asc",
            nativeQuery = true)
    Page<Object[]> findAssociateField(@Param("a") AssociateDTO associateDTO,
                                      @Param("orIds") List<Integer> orIds,
                                      @Param("preIds") List<Integer> preIds,
                                      Pageable pageable);

    /**
     * 根据联想词分页查出联想场
     * @param associateDTO
     * @return
     */
    @Query(value = "select associate.associate_word, associate.reaction_word,  associate.associate_pos, count(*) c" +
            " from profession, associate" +
            " where associate.associate_word = :#{#a.associateWord} and associate.reaction_word != ''" +
            " and if(:#{#a.reactionWord} !='', associate.reaction_word like concat('%',:#{#a.reactionWord},'%'),1=1)" +
            " and if(:#{#a.reactionPos} !='', associate.reaction_pos = :#{#a.reactionPos},1=1)" +
            " and if(:#{#a.schoolName} !='', associate.school_name  like concat('%',:#{#a.schoolName},'%'),1=1)" +
            " and if(:#{#a.gradeId} !=0, associate.grade_id = :#{#a.gradeId},1=1)" +
            " and if(:#{#a.psqId} !=0, associate.psq_id = :#{#a.psqId},1=1)" +
            " and if(:#{#a.professionId} !=0, (profession.parent_id = :#{#a.professionId} or associate.profession_id = :#{#a.professionId}),1=1)" +
            " and associate.origin_area_id in :#{#orIds}" +
            " and associate.present_area_id in :#{#preIds}" +
            " and if(:#{#a.age1} >=0, associate.age >= :#{#a.age1},1=1)" +
            " and if(:#{#a.age2} >=0, associate.age <= :#{#a.age2},1=1)" +
            " and if(:#{#a.sex} >=0, associate.sex = :#{#a.sex},1=1)" +
            " and if(:#{#a.jobId} !=0, associate.job_id = :#{#a.jobId},1=1)" +
            " and if(:#{#a.nationId} !=0, associate.nation_id = :#{#a.nationId},1=1)" +
            " and profession.profession_id = associate.profession_id" +
            " GROUP BY associate.reaction_word" +
            " ORDER BY c desc, convert(associate.reaction_word using gbk) asc",
            nativeQuery = true)
    List<Object[]> findAssociateField(@Param("a") AssociateDTO associateDTO,
                                                 @Param("orIds") List<Integer> orIds,
                                                 @Param("preIds") List<Integer> preIds);
}
