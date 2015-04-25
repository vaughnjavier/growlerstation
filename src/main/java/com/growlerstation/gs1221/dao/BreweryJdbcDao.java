package com.growlerstation.gs1221.dao;

import com.growlerstation.gs1221.dao.mapper.BreweryMapper;
import com.growlerstation.gs1221.model.Brewery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;
import java.util.List;

/**
 * @author ralvarado
 */
@Repository
public class BreweryJdbcDao implements BaseDao<Brewery> {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private static final String GET_ALL = "SELECT * FROM BREWERY";
    private static final String SAVE = "INSERT INTO BREWERY (name, description, date_added, location, url) "
            + "VALUES (?, ?, ?, ?, ?)";
    private static final String UPDATE = "UPDATE BREWERY SET name=?, description=?, location=?, url=? WHERE id=?";
    private static final String DELETE = "DELETE FROM BREWERY where id = ?";
    private static final String GET = "SELECT * FROM BREWERY WHERE id = ?";

    @Override
    public List<Brewery> getAll() {
        return jdbcTemplate.query(GET_ALL, new BreweryMapper());
    }

    @Override
    public int save(final Brewery brewery) {
        KeyHolder keyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update(new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement ps =
                        connection.prepareStatement(SAVE, new String[]{"id"});
                ps.setString(1, brewery.getName());
                ps.setString(2, brewery.getDescription());
                java.util.Date date = new java.util.Date();
                ps.setDate(3, new java.sql.Date(date.getTime()));
                ps.setString(4, brewery.getLocation());
                ps.setString(5, brewery.getUrl());
                return ps;
            }
        },
        keyHolder);
        // keyHolder.getKey() now contains the generated key
        return keyHolder.getKey().intValue();
    }

    @Override
    public int update(Brewery brewery) {
        return jdbcTemplate.update(UPDATE, brewery.getName(), brewery.getDescription(),
                brewery.getLocation(), brewery.getUrl(), brewery.getId());
    }

    @Override
    public int delete(int id) {
        return jdbcTemplate.update(DELETE, id);
    }

    @Override
    public Brewery get(int id) {
        return jdbcTemplate.queryForObject(GET, new Object[]{id},
                new BreweryMapper());
    }
}