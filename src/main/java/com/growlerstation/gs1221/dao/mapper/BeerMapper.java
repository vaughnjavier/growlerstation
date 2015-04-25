package com.growlerstation.gs1221.dao.mapper;

import com.growlerstation.gs1221.model.Beer;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author ralvarado
 */
public class BeerMapper implements RowMapper<Beer>{

    @Override
    public Beer mapRow(ResultSet rs, int i) throws SQLException {
        Beer beer = new Beer();
        beer.setAbv(rs.getDouble("ABV"));
        beer.setBrewery(rs.getString("BREWERY"));
        beer.setDateAdded(rs.getDate("DATE_ADDED"));
        beer.setDescription(rs.getString("DESCRIPTION"));
        beer.setId(rs.getInt("ID"));
        beer.setName(rs.getString("NAME"));
        beer.setPourSize(rs.getInt("POUR_SIZE"));
        beer.setPricing(rs.getString("PRICING"));
        beer.setStyle(rs.getString("STYLE"));
        return beer;
    }
    
}
