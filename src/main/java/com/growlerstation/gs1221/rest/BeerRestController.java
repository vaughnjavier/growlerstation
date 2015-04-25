/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.growlerstation.gs1221.rest;

import com.growlerstation.gs1221.dao.BreweryJdbcDao;
import com.growlerstation.gs1221.model.Brewery;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 *
 * @author ralvarado
 */
@RestController
public class BeerRestController {
    
    @Autowired
    BreweryJdbcDao breweryDao;
    
    @RequestMapping("/breweries")
    public List<Brewery> getAllBreweries(){
        return breweryDao.getAll();
    }
    
    @RequestMapping(value = "/createBrewery", method = RequestMethod.POST)
    public @ResponseBody Brewery createBrewery(@RequestBody Brewery brewery){
        brewery.setId(breweryDao.save(brewery));
        return brewery;
    }

    @RequestMapping("/removeBrewery/{id}")
    public int removeBrewery(@PathVariable int id){
        return breweryDao.delete(id);
    }

    @RequestMapping(value = "/updateBrewery", method = RequestMethod.POST)
    public int updateBrewery(@RequestBody Brewery brewery){
        return breweryDao.update(brewery);
    }
}
