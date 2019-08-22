package edu.hsd.associate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * page导航
 * @author 曹成成
 * @date 2019/8/15 9:26
 */
@Controller
//@RequestMapping("/")
public class PageController {

    /**
     * 主页
     * @return
     */
    @GetMapping("/index")
    public ModelAndView index(){
        return new ModelAndView("layout/index");
    }

    /**
     * 联想词表页
     * @return
     */
    @GetMapping("/associateWord")
    public ModelAndView associateWord(){
        return new ModelAndView("associateWord/associateWord");
    }

    /**
     * 发布问卷页
     * @return
     */
    @GetMapping("/psq")
    public ModelAndView psq(){
        return new ModelAndView("psq/psq");
    }

    /**
     * 联想场页
     * @return
     */
    @GetMapping("/associate")
    public ModelAndView associate(){
        return new ModelAndView("associate/associate");
    }

}
