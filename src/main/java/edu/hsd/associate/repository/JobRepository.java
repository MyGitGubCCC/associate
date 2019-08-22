package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Job;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author 曹成成
 * @date 2019/8/21 19:30
 */
public interface JobRepository extends JpaRepository<Job, Integer> {

}
