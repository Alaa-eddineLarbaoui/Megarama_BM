package com.octest.servlets;

import com.octest.beans.Favoris;
import dao.FavorisDAO;
import dao.FavorisDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/AddFavorisServlet")
public class AddFavorisServlet extends HttpServlet {
    private FavorisDAO favorisDAO;

    public void init() throws ServletException {
        try {
            favorisDAO = new FavorisDAOImpl();
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Error initializing DAO", e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int filmId = Integer.parseInt(request.getParameter("filmId"));
        int userId = Integer.parseInt(request.getParameter("userId"));
        Favoris favoris = new Favoris(null, filmId, userId);
        try {
            favorisDAO.ajouterFavoris(favoris);
            response.sendRedirect(request.getContextPath() + "/WEB-INF/Accueil.jsp?userId=" + userId);
        } catch (SQLException e) {
            throw new ServletException("Error adding favoris", e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
