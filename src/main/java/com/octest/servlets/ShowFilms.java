
package com.octest.servlets;

import com.octest.beans.Films;
import dao.FilmDAOImpl;
import dao.HibernateDAOImpl;

import java.io.IOException;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/ShowFilms")
public class ShowFilms extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public ShowFilms() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HibernateDAOImpl Hr=new HibernateDAOImpl();
        Films flm=new Films();

        try {

            request.setAttribute("films", Hr.show(Films.class ,flm));
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
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

}