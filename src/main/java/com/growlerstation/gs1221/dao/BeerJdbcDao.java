package com.growlerstation.gs1221.dao;

import com.growlerstation.gs1221.dao.mapper.BeerMapper;
import com.growlerstation.gs1221.model.Beer;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ralvarado
 */
@Repository
public class BeerJdbcDao implements BeerDao<Beer>{
    
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    private static final String GET_ALL = "SELECT * FROM BEER";
    private static final String SAVE = "INSERT INTO BEER (name, brewery, "
            + "style, pricing, pour_size, abv, description, date_added) "
            + "VALUES (?, ?, ?, ?, ?, ? ,? ,?, ?)";
    private static final String UPDATE = "UPDATE BEER SET name = ?, brewery = ?,"
            + " style = ?, pricing = ?, pour_size = ?, abv = ?, description = ?"
            + " WHERE id = ?";
    private static final String DELETE = "DELETE FROM BEER where id = ?";
    private static final String GET = "SELECT * FROM BEER WHERE id = ?";
    
    @Override
    public List<Beer> getAll() {
        return jdbcTemplate.query(GET_ALL, new BeerMapper());
    }

    @Override
    public int save(Beer beer) {
        return jdbcTemplate.update(SAVE, beer.getName(), beer.getBrewery(),
            beer.getStyle(), beer.getPricing(), beer.getPourSize(),
            beer.getAbv(), beer.getDescription(), new Date());
    }

    @Override
    public int update(Beer beer) {
        return jdbcTemplate.update(UPDATE, beer.getName(), beer.getBrewery(),
            beer.getStyle(), beer.getPricing(), beer.getPourSize(),
            beer.getAbv(), beer.getDescription());
    }

    @Override
    public int delete(int id) {
        return jdbcTemplate.update(DELETE, id);
    }

    @Override
    public Beer get(int id) {
        return jdbcTemplate.queryForObject(GET, new Object[]{id},
                new BeerMapper());
    }

    private static final String GET_BEERS_FOR_STORE = "SELECT * FROM BEER WHERE "
            + "FROM BEER_STORE BS, BEER B "
            + "WHERE BS.STORE_ID = ? "
            + "AND BS.BEER_ID = B.BEER_ID";
    
    @Override
    public List<Beer> getBeersForStore(int storeId) {
        return jdbcTemplate.query(GET_BEERS_FOR_STORE, new BeerMapper());
    }

    private static final String ADD_BEERS_FOR_STORE = "INSERT INTO BEER_STORE "
            + "(BEER_ID, STORE_ID) VALUES(?,?)";
    
    @Override
    public int addBeersToStore(int beerId, int storeId) {
        return jdbcTemplate.update(ADD_BEERS_FOR_STORE, beerId, storeId);
    }

    private static final String REMOVE_BEERS_FOR_STORE = "DELETE FROM BEER_STORE "
            + "WHERE STORE_ID = ? "
            + "AND BEER_ID = ?";
    
    @Override
    public int removeBeersFromStore(int beerId, int storeId) {
        return jdbcTemplate.update(REMOVE_BEERS_FOR_STORE, beerId, storeId);
    }
}
