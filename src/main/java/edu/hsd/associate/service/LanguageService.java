package edu.hsd.associate.service;

import edu.hsd.associate.dataobject.Language;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/17 17:08
 */
public interface LanguageService {
    List<Language> findAll();
}
