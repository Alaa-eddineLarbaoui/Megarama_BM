package com.octest.servlets;

import com.octest.beans.Reservations;
import dao.FilmDAOImpl;
import dao.HibernateDAOImpl;
import dao.ReserveDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

@WebServlet(name = "ReserverMovie", value = "/ReserverMovie")
public class ReserverMovie extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HibernateDAOImpl hi = new HibernateDAOImpl();

        Integer filmId = Integer.valueOf(request.getParameter("film_id"));
        Integer Tickets = Integer.valueOf(request.getParameter("seats"));
        Reservations rev = new Reservations(filmId, Tickets);
        hi.save(rev);

        request.setAttribute("alert", ".");







        FilmDAOImpl r=new FilmDAOImpl();

        try {
            request.setAttribute("films", r.ShowFilms());

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        FilmDAOImpl disneyfilms = new FilmDAOImpl();
        try {
            request.setAttribute("Disneys",disneyfilms.MovieDisney());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/Acceuil.jsp").forward(request, response);

    }}


