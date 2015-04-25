package com.growlerstation.gs1221.dao.mapper;

import com.growlerstation.gs1221.model.Brewery;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author ralvarado
 */
public class BreweryMapper implements RowMapper<Brewery>{

    @Override
    public Brewery mapRow(ResultSet rs, int i) throws SQLException {
        Brewery brewery = new Brewery();
        brewery.setId(rs.getInt("ID"));
        brewery.setDescription(rs.getString("DESCRIPTION"));
        brewery.setDateAdded(rs.getDate("DATE_ADDED"));
        brewery.setLocation(rs.getString("LOCATION"));
        brewery.setName(rs.getString("NAME"));
        brewery.setUrl(rs.getString("URL"));
        return brewery;
    }
}
