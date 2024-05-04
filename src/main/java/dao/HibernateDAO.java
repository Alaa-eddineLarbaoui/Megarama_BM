package dao;

import com.octest.beans.Films;

import java.util.ArrayList;
import java.util.List;

public interface HibernateDAO {
    void save(Object C) throws InstantiationException, IllegalAccessException;
    <T> void delete(Class<T> C, Integer id) throws InstantiationException, IllegalAccessException;
    void merge(Object C) throws InstantiationException, IllegalAccessException;
    <T> ArrayList<T> show(Class<T> C) throws InstantiationException, IllegalAccessException;
    <T> Object load(Class<T> C, Integer id) throws InstantiationException, IllegalAccessException;
    <T> ArrayList<T> get(Class<T> C, Integer id) throws InstantiationException, IllegalAccessException;
    public <T> Object byTitle(Class<T> C, String title) throws InstantiationException, IllegalAccessException;
    public <T> ArrayList<T> ShowRecommendation()throws InstantiationException, IllegalAccessException;
}
