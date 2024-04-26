package com.octest.servlets;

import dao.FilmDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "MovieDetails", value = "/MovieDetails")
public class MovieDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FilmDAOImpl details=new FilmDAOImpl();

        try {
            request.setAttribute("details", details.ShowMovie());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/DetailMovie.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}