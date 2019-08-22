package edu.hsd.associate.service;

import edu.hsd.associate.dataobject.Area;
import edu.hsd.associate.vo.AreaVo;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 20:14
 */
public interface AreaService {
    List<AreaVo> findTreeAreaVo();
}
