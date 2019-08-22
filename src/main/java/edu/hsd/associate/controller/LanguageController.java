package edu.hsd.associate.controller;

import edu.hsd.associate.dataobject.Language;
import edu.hsd.associate.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/17 17:13
 */
@RestController
@RequestMapping("/language")
public class LanguageController {

    @Autowired
    private LanguageService languageService;

    @RequestMapping("/languageList")
    public List<Language> languageList(){
        List<Language> languageList = languageService.findAll();
        return languageList;
    }
}
