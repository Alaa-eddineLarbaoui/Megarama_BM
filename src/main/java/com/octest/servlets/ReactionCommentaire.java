package com.octest.servlets;

import com.octest.beans.Reaction;
import com.octest.beans.User;
import dao.ReactionDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ReactionCommentaire", value = "/ReactionCommentaire")
public class ReactionCommentaire extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            String commentaire = request.getParameter("Commentaire");
            Integer filmId = Integer.parseInt(request.getParameter("film_id"));
            Integer notation = Integer.parseInt(request.getParameter("Notation"));
            User user = (User) session.getAttribute("user");
            System.out.println(filmId);
            System.out.println(notation);
            System.out.println(user);
            System.out.println(commentaire);
            System.out.println(session);
            if (commentaire != null && user != null) {
                Reaction reaction = new Reaction();
                reaction.setNotation(notation);
                reaction.setIdFilm(filmId);
                reaction.setCommentaire(commentaire);
                reaction.setIdUserR(user.getIdUser());
                ReactionDAOImpl reactionIM = new ReactionDAOImpl();
                reactionIM.Save(reaction);


            } else {

                response.getWriter().println("Erreur : paramètres manquants");
            }
        } else {

            response.getWriter().println("Erreur : session introuvable");
        }
    }
}
