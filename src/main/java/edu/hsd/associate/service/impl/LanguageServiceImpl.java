package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Language;
import edu.hsd.associate.repository.LanguageRepository;
import edu.hsd.associate.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/17 17:09
 */
@Service
public class LanguageServiceImpl implements LanguageService {

    @Autowired
    private LanguageRepository languageRepository;

    @Override
    public List<Language> findAll() {
        return languageRepository.findAll();
    }
}
