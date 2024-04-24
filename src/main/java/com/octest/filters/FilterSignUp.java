package com.octest.filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "FilterSignUp", urlPatterns = {"/*"})
public class FilterSignUp implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialisation du filtre
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        // Logique du filtre
        System.out.println("Filtrage de la requête : " + servletRequest.getRemoteAddr());

        // Passer la requête au prochain filtre dans la chaîne
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
        // Destruction du filtre
    }
}