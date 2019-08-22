package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Grade;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author 曹成成
 * @date 2019/8/21 19:01
 */
public interface GradeRepository extends JpaRepository<Grade, Integer> {

}
