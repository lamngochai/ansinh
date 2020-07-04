package com.stechviet.ansinh.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainController {

	
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String staticResource(Model model) {

        return "login";
    }
    @RequestMapping(value = "/permision", method = RequestMethod.GET)
    public String staticpermision(Model model) {
        return "permision";
    }
}
