package com.growlerstation.gs1221.model;

/**
 *
 * @author ralvarado
 */
public class BeerStore {
    private int beerId;
    private int storeId;
    private String operation;
    
    public static final String ADD = "add";
    public static final String REMOVE = "remove";

    public int getBeerId() {
        return beerId;
    }

    public void setBeerId(int beerId) {
        this.beerId = beerId;
    }

    public int getStoreId() {
        return storeId;
    }

    public void setStoreId(int storeId) {
        this.storeId = storeId;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }
}
