
package dao;

import com.octest.beans.Films;
import com.octest.config.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

public class RecommendationDAOImpl implements RecommendationDAO {

    @Override
    public List<Films> ShowRecommendation() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        Query query= session.createSQLQuery("SELECT F.genre, COUNT(*) AS nombre_de_reservations FROM Films F INNER JOIN Reservations R ON F.film_id = R.film_id GROUP BY F.genre ORDER BY nombre_de_reservations DESC");

        query.setMaxResults(1);
        String genre=query.getQueryString();
        Query query1=session.createQuery("From Films f Where genre= :genre");
        query1.setParameter("genre", genre);
        List<Films> films = query.list();
        session.getTransaction().commit();
        session.close();
        System.out.println(films);
        return films;

    }
}
