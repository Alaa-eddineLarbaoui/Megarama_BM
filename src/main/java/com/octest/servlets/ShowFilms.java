
package com.octest.servlets;

import com.octest.beans.Films;
import com.octest.beans.Reaction;
import com.octest.beans.User;
import dao.FilmDAOImpl;

import dao.HibernateDAO;
import dao.HibernateDAOImpl;


import java.io.File;
import java.io.IOException;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static java.lang.Integer.valueOf;


@WebServlet("/ShowFilms")
public class ShowFilms extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public ShowFilms() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HibernateDAO Hr=new HibernateDAOImpl();






       try {

            request.setAttribute("films", Hr.show(Films.class));

        } catch (InstantiationException | IllegalAccessException e) {
           throw new RuntimeException(e);
       }


        FilmDAOImpl filmss= new FilmDAOImpl();
        try {
            request.setAttribute("films", filmss.ShowFilms());
            request.setAttribute("notations",filmss.getNotation());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        HibernateDAOImpl hh=new HibernateDAOImpl();


        try {
            request.setAttribute("re",hh.ShowRecommendation());



        } catch (InstantiationException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e) {
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