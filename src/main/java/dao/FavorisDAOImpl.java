package dao;

import com.octest.beans.Favoris;
import com.octest.beans.Films;
import com.octest.config.HibernateUtil;
import org.hibernate.Session;

import java.util.List;

public class FavorisDAOImpl implements FavorisDAO {

    @Override
    public void Save(Favoris favoris) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.save(favoris);
        session.getTransaction().commit();
        System.out.println(favoris);
        System.out.println("ffffffff");
        session.close();
    }

    @Override
    public List<Films> findAll() {
         Session session = HibernateUtil.getSessionFactory().openSession();
         List<Films> filmsList = session.createQuery("FROM Films").list();
         session.close();
         return filmsList;
    }

    @Override
    public void delete(Favoris favoris) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(favoris);
        session.getTransaction().commit();
        System.out.println("Favori supprimé : " + favoris);
        session.close();
    }
}
