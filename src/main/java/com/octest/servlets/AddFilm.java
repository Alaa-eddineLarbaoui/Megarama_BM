package com.octest.servlets;

import com.octest.beans.Films;
import dao.FilmDAO;
import dao.FilmDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AddFilm", value = "/AddFilm")
public class AddFilm extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/Addfilm.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String titre = request.getParameter("titre");
        String director = request.getParameter("director");
        String genre = request.getParameter("genre");
        Integer duration = Integer.parseInt(request.getParameter("duration"));
        String synopsis = request.getParameter("synopsis");

        Films newFilm = new Films(titre, director, genre, duration, synopsis);
        FilmDAO filmDAO = new FilmDAOImpl();


        try {
            filmDAO.addFilms(newFilm);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }


        this.getServletContext().getRequestDispatcher("/WEB-INF/Confirm.jsp").forward(request, response);
    }
}
