
package com.growlerstation.gs1221.dao.mapper;

import com.growlerstation.gs1221.model.BeerStore;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author ralvarado
 */
public class BeerStoreMapper implements RowMapper<BeerStore>{

    @Override
    public BeerStore mapRow(ResultSet rs, int i) throws SQLException {
        BeerStore beerStore = new BeerStore();
        beerStore.setBeerId(rs.getInt("BEER_ID"));
        beerStore.setStoreId(rs.getInt("STORE_ID"));
        return beerStore;
    }
    
}
