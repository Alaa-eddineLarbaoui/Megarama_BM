package com.octest.servlets;

import com.octest.beans.Favoris;
import com.octest.config.HibernateUtil;
import com.octest.dao.FavorisDAO;
import com.octest.dao.FavorisDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/favoris")
public class AfficherFavorisServlet extends HttpServlet {
    private FavorisDAO favorisDAO;

    public void init() throws ServletException {
        favorisDAO = new FavorisDAOImpl(HibernateUtil.CreateSessionFactory(Favoris.class));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idUser = Integer.parseInt(request.getParameter("userId"));

        List<Favoris> favorisList = favorisDAO.obtenirFavorisUtilisateur(idUser);

        request.setAttribute("favorisList", favorisList);
        request.getRequestDispatcher("/WEB-INF/favoris.jsp").forward(request, response);
    }
}
