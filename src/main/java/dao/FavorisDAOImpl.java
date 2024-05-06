package com.octest.dao;

import com.octest.beans.Favoris;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

public class FavorisDAOImpl implements com.octest.dao.FavorisDAO {
    private SessionFactory sessionFactory;

    public FavorisDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void ajouterFavori(Favoris favoris) {
        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.save(favoris);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    @Override
    public void supprimerFavori(int favorisId) {
        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Favoris favoris = session.get(Favoris.class, favorisId);
            if (favoris != null) {
                session.delete(favoris);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    @Override
    public List<Favoris> obtenirFavorisUtilisateur(int idUser) {
        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Favoris> criteria = builder.createQuery(Favoris.class);
        Root<Favoris> root = criteria.from(Favoris.class);
        criteria.select(root).where(builder.equal(root.get("idUser"), idUser));
        List<Favoris> favorisList = session.createQuery(criteria).getResultList();
        session.close();
        return favorisList;
    }
}
