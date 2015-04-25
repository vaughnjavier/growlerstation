package com.growlerstation.gs1221.dao.mapper;

import com.growlerstation.gs1221.model.Store;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author ralvarado
 */
public class StoreMapper implements RowMapper<Store>{

    @Override
    public Store mapRow(ResultSet rs, int i) throws SQLException {
        Store store = new Store();
        store.setDateAdded(rs.getDate("DATE_ADDED"));
        store.setDescription(rs.getString("DESCRIPTION"));
        store.setId(rs.getInt("ID"));
        store.setLocation(rs.getString("LOCATION"));
        store.setName(rs.getString("NAME"));
        return store;
    }
}
