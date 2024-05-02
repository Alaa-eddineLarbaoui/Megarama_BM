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

@WebServlet(name = "CancelFilm", value = "/CancelFilm")
public class CancelFilm extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private FilmDAO filmDAO;



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/CancelFilm.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        filmDAO = new FilmDAOImpl();
        int filmId = Integer.valueOf(request.getParameter("filmId"));
        try {
            filmDAO.cancelFilm(filmId);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/CancelFilm.jsp").forward(request, response);
    }
}