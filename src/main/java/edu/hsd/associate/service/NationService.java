package edu.hsd.associate.service;

import edu.hsd.associate.dataobject.Nation;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 19:31
 */
public interface NationService {
    List<Nation> findAll();
}
