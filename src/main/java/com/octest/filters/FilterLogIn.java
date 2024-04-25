package com.octest.filters;

import dao.UserDao;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "FilterLogIn", urlPatterns = {"/*"})
public class FilterLogIn implements Filter {
    private UserDao UserDao;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialisation du filtre
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
//        String mail = request.getParameter("Email");
//        String passWord = request.getParameter("password");
//
//        int resultLogIn = UserDao.verifieUser(mail,passWord);
//
//        if(resultLogIn==0)
//        {
//            request.setAttribute("error","User not found");
//            RequestDispatcher dispatcher = request.getRequestDispatcher("LogIn.jsp");
//            dispatcher.forward(request, response);
//        }
//        else
//        {
//            filterChain.doFilter(request, response);
//        }

        filterChain.doFilter(request, response);

    }

    @Override
    public void destroy() {
        // Destruction du filtre
    }
}