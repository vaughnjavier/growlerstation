package com.growlerstation.gs1221.dao;

import java.util.List;

/**
 *
 * @author ralvarado
 * @param <Beer>
 */
public interface BeerDao<Beer> extends BaseDao<Beer> {
    
    public List<Beer> getBeersForStore(int storeId);
    
    public int addBeersToStore(int beerId, int storeId);
    
    public int removeBeersFromStore(int beerId, int storeId);
}
