package com.octest.servlets;

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


        String mail = request.getParameter("Email");
        String passWord = request.getParameter("password");

    /*    int resultLogIn = UserDao.verifieUser(mail,passWord);
        if(resultLogIn==0)
        {

            request.setAttribute("error","User not found");
            RequestDispatcher dispatcher = request.getRequestDispatcher("LogIn.jsp");
            dispatcher.include(request, response);
        }
        else if(resultLogIn==1)
        {
            response.setContentType("/WEB-INF/addfilm.jsp");
        }
        else
        {
            response.setContentType("/WEB-INF/Acceuil.jsp");
        }
*/
        String typeUser = request.getParameter("userType");

        //session.setAttribute("Email", mail);
        //session.setAttribute("password", passWord);
       // session.setAttribute("type",typeUser);

        System.out.println("hhhhhhhhhhhhhhhhhhhh");

        if(session.getAttribute("user").equals("admin")) {
            response.sendRedirect("/Megarama_Cinema_BM_war_exploded/Acceuil");
        } else {
            response.sendRedirect("/Megarama_Cinema_BM_war_exploded/Acceuil");
        }
    }
}