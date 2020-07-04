package com.stechviet.ansinh.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {

    /**
     * Name for the welcome view.
     */
    private static final String VIEW_WELCOME = "login";

    /**
     * Default constructor.
     */
    public HomeController() {
        super();
    }

    /**
     * Shows the welcome view.
     * 
     * @return the welcome view
     */
    @GetMapping(produces = MediaType.TEXT_HTML_VALUE)
    public String showWelcome() {
        return VIEW_WELCOME;
    }

}
