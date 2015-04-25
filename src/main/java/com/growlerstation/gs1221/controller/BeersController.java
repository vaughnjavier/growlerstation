package com.growlerstation.gs1221.controller;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author ralvarado
 */
@Controller
public class BeersController {

    @RequestMapping(value = "/beers")
    public ModelAndView beersView(HttpServletResponse response) throws IOException {
        return new ModelAndView("beers");
    }

    @RequestMapping(value = "/stores")
    public ModelAndView storesView(HttpServletResponse response) throws IOException {
        return new ModelAndView("stores");
    }

    @RequestMapping(value = "/brewery")
    public ModelAndView breweryView(HttpServletResponse response) throws IOException {
        return new ModelAndView("brewery");
    }
}
