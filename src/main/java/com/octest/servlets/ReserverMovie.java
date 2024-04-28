package com.octest.servlets;

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


        Integer filmId=Integer.valueOf(request.getParameter("film_id"));
        Integer Tickets=Integer.valueOf(request.getParameter("seats"));
        ReserveDAOImpl reserve =new ReserveDAOImpl();
        try {
            reserve.ReserveMovie(filmId,Tickets);
        } catch (ClassNotFoundException e) {

            e.printStackTrace();
        } catch (SQLException e) {



        }
        this.getServletContext().getRequestDispatcher("/WEB-INF/Acceuil.jsp").forward(request, response);

    }}

