package com.growlerstation.gs1221.service;

import com.growlerstation.gs1221.dao.BeerDao;
import com.growlerstation.gs1221.model.BeerStore;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ralvarado
 */
@Transactional
public class BeerService {

    @Autowired
    private BeerDao beerDao;

    public void updateBeersToStore(List<BeerStore> beers, int storeId) {
        for (BeerStore beer : beers) {
            switch (beer.getOperation()) {
                case BeerStore.ADD:
                    beerDao.addBeersToStore(beer.getBeerId(), beer.getStoreId());
                    break;
                case BeerStore.REMOVE:
                    beerDao.removeBeersFromStore(beer.getBeerId(), beer.getStoreId());
                    break;
            }
        }
    }

}
