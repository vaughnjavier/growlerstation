/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.growlerstation.gs1221.rest;

import com.growlerstation.gs1221.dao.BeerJdbcDao;
import com.growlerstation.gs1221.dao.BreweryJdbcDao;
import com.growlerstation.gs1221.model.Beer;
import com.growlerstation.gs1221.model.Brewery;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * @author ralvarado
 */
@RestController
public class BeerRestController {

    @Autowired
    BreweryJdbcDao breweryDao;

    @Autowired
    BeerJdbcDao beerDao;

    @RequestMapping("/breweries")
    public List<Brewery> getAllBreweries() {
        return breweryDao.getAll();
    }

    @RequestMapping(value = "/createBrewery", method = RequestMethod.POST)
    public
    @ResponseBody
    Brewery createBrewery(@RequestBody Brewery brewery) {
        brewery.setId(breweryDao.save(brewery));
        return brewery;
    }

    @RequestMapping("/removeBrewery/{id}")
    public int removeBrewery(@PathVariable int id) {
        return breweryDao.delete(id);
    }

    @RequestMapping("/getBrewery/{id}")
    public Brewery getBrewery(@PathVariable int id) {
        return breweryDao.get(id);
    }

    @RequestMapping(value = "/updateBrewery", method = RequestMethod.POST)
    public int updateBrewery(@RequestBody Brewery brewery) {
        return breweryDao.update(brewery);
    }


    @RequestMapping("/beer")
    public List<Beer> getAllBeers(){
        return beerDao.getAll();
    }

    @RequestMapping(value = "/createBeer")
    Beer createBeer(@RequestBody Beer beer){
        beer.setId(beerDao.save(beer));
        return beer;
    }

    @RequestMapping(value = "updateBeer")
    public int updateBrewery(@RequestBody Beer beer){
        return beerDao.update(beer);
    }

    @RequestMapping("/removeBeer/{id}")
    public int removeBeer(@PathVariable int id){
        return beerDao.delete(id);
    }
}
