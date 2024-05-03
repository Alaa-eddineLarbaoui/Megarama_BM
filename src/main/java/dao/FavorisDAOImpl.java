package dao;

import com.octest.beans.Favoris;
import com.octest.config.HibernateUtil;
import org.hibernate.Session;

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
}
