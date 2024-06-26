package com.octest.servlets;

import com.octest.beans.Reaction;
import com.octest.beans.User;
import dao.HibernateDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Notation", value = "/Notation")
public class Notation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HibernateDAOImpl Hr=new HibernateDAOImpl();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        int rating = Integer.parseInt(request.getParameter("rating"));
        int idFilm = Integer.parseInt(request.getParameter("film_id"));
        int idUser = user.getIdUser();

        Reaction reaction = new Reaction(null,idUser,rating,idFilm);
        Hr.save(reaction);

        this.getServletContext().getRequestDispatcher("/WEB-INF/DetailMovie.jsp").forward(request, response);
    }
}