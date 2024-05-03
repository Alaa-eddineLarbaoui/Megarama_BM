package com.octest.servlets;

import com.octest.beans.Films;
import dao.FavorisDAO;
import dao.FavorisDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListFavoris", value = "/ListFavoris")
public class ListFavoris extends HttpServlet {
    private FavorisDAO favorisDAO = new FavorisDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Films> filmsList = favorisDAO.findAll();
        request.setAttribute("filmsList", filmsList);
        request.getRequestDispatcher("listeFilms.jsp").forward(request, response);
    }
}
