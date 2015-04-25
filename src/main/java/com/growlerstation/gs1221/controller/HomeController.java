package com.growlerstation.gs1221.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    
    @RequestMapping(value = "/home")
    public ModelAndView home(HttpServletResponse response) throws IOException {
        return new ModelAndView("home");
    }

    @RequestMapping(value = "/")
    public ModelAndView defaultPage(HttpServletResponse response) throws IOException {
        return new ModelAndView("home");
    }
}
