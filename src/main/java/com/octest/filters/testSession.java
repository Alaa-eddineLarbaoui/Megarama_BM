package com.octest.filters;

import com.octest.beans.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "testSession", urlPatterns = {"/*"})
public class testSession implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialisation du filtre
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(user!=null)
        {
            filterChain.doFilter(servletRequest, servletResponse);
        }
        else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/LogIn.jsp");
            dispatcher.include(request, response);
        }
    }

    @Override
    public void destroy() {
        // Destruction du filtre
    }
}