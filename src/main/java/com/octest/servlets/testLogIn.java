package com.octest.servlets;

import com.octest.beans.User;
import com.octest.filters.FilterLogIn;
import com.octest.filters.FilterSignUp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "testLogIn", value = "/testLogIn")
public class testLogIn extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();


        User user = (User) session.getAttribute("user");



        if (user != null && user.getType().equals("admin")) {

            response.sendRedirect("/demo_war_exploded/Add");
        } else {

            response.sendRedirect("/demo_war_exploded/ShowFilms");
        }
    }
}