package com.octest.filters;

import com.octest.beans.User;
import dao.UserDao;
import dao.UserDaoImpl;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebFilter("/testLogIn")
public class FilterLogIn implements Filter {
    private UserDao UserDao=new UserDaoImpl();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialisation du filtre
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String mail = request.getParameter("Email");
        String passWord = request.getParameter("password");


        User user = null;
        try {
            user = UserDao.getUser(mail);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        HttpSession session = request.getSession();

        session.setAttribute("user",user);


        if(user!=null&&user.getPassWord().equals(passWord))
        {
            filterChain.doFilter(request, response);
        }
        else
        {
            request.setAttribute("error","User not found");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/LogIn.jsp");
            dispatcher.include(request, response);
        }
    }

    @Override
    public void destroy() {
        // Destruction du filtre
    }
}