package com.octest.servlets;

import com.octest.beans.Films;
import com.octest.beans.Reaction;
import com.octest.beans.User;
import dao.FilmDAOImpl;
import dao.HibernateDAO;
import dao.HibernateDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "ReactionCommentaire", value = "/ReactionCommentaire")
public class ReactionCommentaire extends HttpServlet {
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer filmId = Integer.valueOf(request.getParameter("filmId"));

        // Utilisation de votre DAO Hibernate pour récupérer les commentaires du film
        HibernateDAOImpl dao = new HibernateDAOImpl();
        ArrayList<Reaction> commentaires = null;
        try {
            commentaires = dao.ReactionCommentaire(filmId);
        } catch (InstantiationException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }


        request.setAttribute("commentaires", commentaires);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Acceuil.jsp");
        dispatcher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
       HibernateDAOImpl Hr=new HibernateDAOImpl();
            String commentaire = request.getParameter("commmentaire");
            Integer filmId = Integer.parseInt(request.getParameter("idFilm"));
            User user = (User) session.getAttribute("user");
        Integer idUser = user.getIdUser();
        Reaction reaction = new Reaction(commentaire, idUser,null,filmId);
        Hr.save(reaction);
        FilmDAOImpl disneyfilms = new FilmDAOImpl();
        try {
            request.setAttribute("Disneys",disneyfilms.MovieDisney());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }








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




        this.getServletContext().getRequestDispatcher("/WEB-INF/Acceuil.jsp").forward(request, response);;

            }
    }

