package com.octest.filters;

import com.octest.beans.User;
import dao.UserDaoImpl;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebFilter("/testSignUp")
public class FilterSignUp implements Filter {
    private UserDaoImpl UserDao=new UserDaoImpl();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialisation du filtre
    }
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String mail = request.getParameter("email");
        String confirmMail = request.getParameter("confirmEmail");
        String passWord = request.getParameter("password");



        User user = null;
        try {
            user = UserDao.getUser(mail);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        if (mail.equals(confirmMail))
        {
            if(user!=null)
            {

                request.setAttribute("error","This email is already in use. Please try again with another email");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Sign.jsp");
                dispatcher.include(request, response);
            }
            else{
                User inserUser = new User();
                inserUser.setIdUser(UserDao.getEndId()+1);
                inserUser.setMail(mail);
                inserUser.setPassWord(passWord);
                inserUser.setType("user");
                UserDao.insertUser(inserUser);
                request.setAttribute("succes","User added successfully.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Sign.jsp");
                dispatcher.include(request, response);
            }
        }
        else{
            request.setAttribute("error","Email confirmation failed");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Sign.jsp");
            dispatcher.include(request, response);
        }
    }

    @Override
    public void destroy() {
        // Destruction du filtre
    }
}