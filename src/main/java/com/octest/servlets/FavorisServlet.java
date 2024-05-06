package com.octest.servlets;

import com.octest.beans.Favoris;
import com.octest.dao.FavorisDAO;
import com.octest.dao.FavorisDAOImpl;
import com.octest.config.HibernateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/favoris")
public class FavorisServlet extends HttpServlet {
    private FavorisDAO favorisDAO;

    public void init() throws ServletException {
        favorisDAO = new FavorisDAOImpl(HibernateUtil.CreateSessionFactory(Favoris.class));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int filmId = Integer.parseInt(request.getParameter("filmId"));
        int idUser = Integer.parseInt(request.getParameter("userId"));

        Favoris favoris = new Favoris();
        favoris.setFilm_id(filmId);
        favoris.setIdUser(idUser);

        favorisDAO.ajouterFavori(favoris);

        response.sendRedirect(request.getContextPath() + "/favoris");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idUser = Integer.parseInt(request.getParameter("userId"));

        List<Favoris> favorisList = favorisDAO.obtenirFavorisUtilisateur(idUser);

        request.setAttribute("favorisList", favorisList);
        request.getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
    }
}
