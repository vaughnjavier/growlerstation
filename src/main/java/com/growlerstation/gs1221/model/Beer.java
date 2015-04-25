package com.growlerstation.gs1221.model;

import java.util.Date;

/**
 *
 * @author ralvarado
 */
public class Beer {
    private int id;
    private String name;
    private String brewery;
    private String style;
    private String pricing;
    private int pourSize;
    private double abv;
    private String description;
    private Date dateAdded;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrewery() {
        return brewery;
    }

    public void setBrewery(String brewery) {
        this.brewery = brewery;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getPricing() {
        return pricing;
    }

    public void setPricing(String pricing) {
        this.pricing = pricing;
    }

    public int getPourSize() {
        return pourSize;
    }

    public void setPourSize(int pourSize) {
        this.pourSize = pourSize;
    }

    public double getAbv() {
        return abv;
    }

    public void setAbv(double abv) {
        this.abv = abv;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDateAdded() {
        return dateAdded;
    }

    public void setDateAdded(Date dateAdded) {
        this.dateAdded = dateAdded;
    }
}
