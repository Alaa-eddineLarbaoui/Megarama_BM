package com.octest.servlets;

import com.octest.beans.User;

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




        if(user.getType().equals("admin")) {
            response.sendRedirect("/Megarama_Cinema_BM_war_exploded/");
        } else {
            response.sendRedirect("/Megarama_Cinema_BM_war_exploded/Add");
        }
    }
}