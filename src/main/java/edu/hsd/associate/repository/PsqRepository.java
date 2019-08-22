package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Psq;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/17 20:37
 */
public interface PsqRepository extends JpaRepository<Psq, Integer> {
    void deleteByPsqIdIn(List<Integer> psqIds);
}
