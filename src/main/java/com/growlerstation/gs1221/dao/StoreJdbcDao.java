package com.growlerstation.gs1221.dao;

import com.growlerstation.gs1221.dao.mapper.StoreMapper;
import com.growlerstation.gs1221.model.Store;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author ralvarado
 */
public class StoreJdbcDao implements BaseDao<Store> {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    private static final String GET_ALL = "SELECT * FROM STORE";
    private static final String SAVE = "INSERT INTO STORE (name, description, date_added, location) "
            + "VALUES (?, ?, ?, ?)";
    private static final String UPDATE = "UPDATE STORE SET name=?, description=?, location=? WHERE id=?";
    private static final String DELETE = "DELETE FROM STORE where id = ?";
    private static final String GET = "SELECT * FROM STORE WHERE id = ?";

    @Override
    public List<Store> getAll() {
        return jdbcTemplate.query(GET_ALL, new StoreMapper());
    }

    @Override
    public int save(Store store) {
        return jdbcTemplate.update(SAVE, store.getName(), store.getDescription(),
                new Date(), store.getLocation());
    }

    @Override
    public int update(Store store) {
        return jdbcTemplate.update(UPDATE, store.getName(), store.getDescription(),
                store.getLocation(), store.getId());
    }

    @Override
    public int delete(int id) {
        return jdbcTemplate.update(DELETE, id);
    }

    @Override
    public Store get(int id) {
        return jdbcTemplate.queryForObject(GET, new Object[]{id},
                new StoreMapper());
    }

}
