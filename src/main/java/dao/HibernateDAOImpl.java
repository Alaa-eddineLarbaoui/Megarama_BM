package dao;


import com.octest.beans.Films;
import com.octest.config.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.ArrayList;
import java.util.List;

public class HibernateDAOImpl implements HibernateDAO {

    @Override
    public void save(Object C){
        Session session = HibernateUtil.CreateSessionFactory(C.getClass()).openSession();
        session.beginTransaction();
        session.save(C);
        session.getTransaction().commit();
    }

    @Override
    public <T> void delete(Class<T> C, Integer id) throws InstantiationException, IllegalAccessException {
        Session session = HibernateUtil.CreateSessionFactory(C).openSession();
        session.beginTransaction();
        Object O = session.get(C, id);
        if(O != null){
            session.delete(O);
        }
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void merge(Object C){
        Session session = HibernateUtil.CreateSessionFactory(C.getClass()).openSession();
        session.beginTransaction();
        session.merge(C);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public <T> ArrayList<T> show(Class<T> C) throws InstantiationException, IllegalAccessException {
        Session session = HibernateUtil.CreateSessionFactory(C).openSession();
        session.beginTransaction();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<T> criteria = builder.createQuery(C);
        criteria.from(C);
        ArrayList<T> data = (ArrayList<T>) session.createQuery(criteria).getResultList();
        session.getTransaction().commit();
        session.close();
        return data;
    }

    @Override
    public <T> Object load(Class<T> C, Integer id) throws InstantiationException, IllegalAccessException {
        Session session = HibernateUtil.CreateSessionFactory(C).openSession();
        session.beginTransaction();
        Object data = session.load(C, id);
        session.getTransaction().commit();
        session.close();
        return data;
    }

    @Override
    public <T> ArrayList<T> get(Class<T> C, Integer id) throws InstantiationException, IllegalAccessException {
        Session session = HibernateUtil.CreateSessionFactory(C).openSession();
        session.beginTransaction();
        ArrayList<T> data = (ArrayList<T>) session.get(C, id);
        session.getTransaction().commit();
        session.close();
        return data;
    }

    @Override
    public <T> Object byTitle(Class<T> C, String title) throws InstantiationException, IllegalAccessException {
        Session session = HibernateUtil.CreateSessionFactory(C).openSession();
        session.beginTransaction();
        Query query = session.createQuery("FROM " + C.getSimpleName() + " C WHERE C.title = :title");
        query.setParameter("title", title);
        Object data = query.list();
        session.getTransaction().commit();
        session.close();
        return data;
    }

    @Override

    public ArrayList<Films> ShowRecommendation() throws InstantiationException, IllegalAccessException {
        Session session = HibernateUtil.CreateSessionFactory(Films.class).openSession();
        session.beginTransaction();

        // Use a native SQL query to retrieve the most popular genre
        Query query = session.createSQLQuery(
                "SELECT F.genre, COUNT(*) AS nombre_de_reservations " +
                        "FROM Films F INNER JOIN Reservations R ON F.film_id = R.film_id " +
                        "GROUP BY F.genre ORDER BY nombre_de_reservations DESC"
        );

        query.setMaxResults(1);
        Object[] result = (Object[]) query.uniqueResult();
        String genre = (String) result[0]; // Assuming the genre is at index 0


        Query query1 = session.createQuery("FROM Films f WHERE f.genre = :genre");
        query1.setParameter("genre", genre);
        ArrayList<Films> films = (ArrayList<Films>) query1.list();

        session.getTransaction().commit();
        session.close();
        System.out.println(films);
        return films;
    }



}

