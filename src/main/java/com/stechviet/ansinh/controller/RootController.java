package com.stechviet.ansinh.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RootController {
	@RequestMapping(value = "/root_index", method = RequestMethod.GET)
    public String rootIndex(Model model , HttpServletResponse response ) {
    	Cookie nameCookir = new Cookie("NAME","Nguyễn_Bá_Linh");
    	Cookie avataCookir = new Cookie("AVATA","Themes/images/avatar-5.jpg");
    	response.addCookie(nameCookir);
    	response.addCookie(avataCookir);
    	return "root/index";
    }
}
