package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Profession;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 14:39
 */
public interface ProfessionRepository extends JpaRepository<Profession, Integer> {
        List<Profession> findByParentId(Integer parentId);
}
