package dao;

import com.octest.beans.Reaction;
import com.octest.beans.User;


import com.octest.config.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class ReactionDAOImpl implements ReactionDAO {
    @Override
    public void  Save(Reaction reaction) {

        Session session = HibernateUtil.getSessionFactory().openSession();

        session.beginTransaction();

    session.save(reaction);
        session.getTransaction().commit();
        System.out.println(reaction);
        System.out.println("11111111111");
     session.close();


    }

    @Override
    public List<User> findAll(User u) {
   return null;}


}
