package com.octest.servlets;

import com.octest.beans.Favoris;
import com.octest.beans.Films;
import dao.FavorisDAO;
import dao.FavorisDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/ListFavoris")
public class ListFavoris extends HttpServlet {
    private FavorisDAO favorisDAO;

    public void init() throws ServletException {
        try {
            favorisDAO = new FavorisDAOImpl();
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException("Error initializing DAO", e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        try {
            List<Films> filmsFavoris = favorisDAO.getFilmsFavoris(userId);
            request.setAttribute("filmsFavoris", filmsFavoris);
            request.getRequestDispatcher("/favoris.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Error getting favoris", e);
        }
    }
}
