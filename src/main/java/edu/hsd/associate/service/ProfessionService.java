package edu.hsd.associate.service;

import edu.hsd.associate.vo.ProfessionVo;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 15:02
 */
public interface ProfessionService {
    List<ProfessionVo> findTreeProfession();
}
