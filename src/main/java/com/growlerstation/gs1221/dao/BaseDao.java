package com.growlerstation.gs1221.dao;

import java.util.List;

/**
 *
 * @author ralvarado
 */
public interface BaseDao<T> {

    public List<T> getAll();

    public int save(T model);

    public int update(T model);

    public int delete(int id);

    public T get(int id);
}
