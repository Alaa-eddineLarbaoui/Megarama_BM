package com.octest.servlets;

import dao.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LogIn", value = "/LogIn")
public class LogIn extends HttpServlet {
    private dao.UserDao UserDao;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        this.getServletContext().getRequestDispatcher("/WEB-INF/LogIn.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();


        String mail = request.getParameter("Email");
        String passWord = request.getParameter("password");

        session.setAttribute("Email", mail);
        session.setAttribute("password", passWord);

        int resultLogIn = UserDao.verifieUser(mail,passWord);

        if(resultLogIn==1)
        {
            response.sendRedirect("/WEB-INF/addfilm.jsp");
        }
        else
        {
            response.sendRedirect("/WEB-INF/Acceuil.jsp");
        }
        this.getServletContext().getRequestDispatcher("/LogIn.jsp").forward(request, response);
    }
}