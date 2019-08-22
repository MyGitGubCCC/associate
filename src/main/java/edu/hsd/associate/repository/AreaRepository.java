package edu.hsd.associate.repository;

import edu.hsd.associate.dataobject.Area;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 20:10
 */
public interface AreaRepository extends JpaRepository<Area, Integer> {

    List<Area> findByParentId(Integer parentId);

    List<Area> findByLocationId(Integer locationId);

    boolean existsByParentId(Integer parentId);

}
