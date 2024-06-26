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


@WebServlet(name = "UpdateFilm", value = "/UpdateFilm")
public class UpdateFilm extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/UpdateFilm.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int filmId = Integer.parseInt(request.getParameter("filmId"));
        String titre = request.getParameter("titre");
        String director = request.getParameter("director");
        String genre = request.getParameter("genre");
        Integer duration = Integer.parseInt(request.getParameter("duration"));
        String synopsis = request.getParameter("synopsis");
        String background_Url = request.getParameter("background_Url");
        String trailler_url = request.getParameter("trailler_url");
        String picture = request.getParameter("picture");

        Films updatedFilm = new Films(filmId, titre, director, genre, duration, synopsis, picture,background_Url,trailler_url);
        FilmDAO filmDAO = new FilmDAOImpl();

        try {
            filmDAO.updateFilm(updatedFilm);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/UpdateFilm.jsp").forward(request, response);

    }
}