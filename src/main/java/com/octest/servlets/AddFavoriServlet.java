package com.octest.servlets;

import com.octest.beans.Favoris;
import dao.FavorisDAO;
import dao.FavorisDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddFavoriServlet", value = "/AddFavoriServlet")
public class AddFavoriServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            Integer favorisId = Integer.parseInt(request.getParameter("favoris_id"));
            Integer filmId = Integer.parseInt(request.getParameter("film_id"));
            Integer idUser = Integer.parseInt(request.getParameter("idUser"));


            if (favorisId != null && filmId != null && idUser != null) {
                Favoris favoris = new Favoris(favorisId, filmId, idUser);//  objet Favoris avec les paramètres
                FavorisDAO favorisDAO = new FavorisDAOImpl();
                favorisDAO.Save(favoris);

                response.sendRedirect("succes.jsp");
            } else {
                throw new ServletException("Tous les paramètres sont nécessaires.");
            }
        } catch (NumberFormatException e) {
            throw new ServletException("Les paramètres doivent être des entiers valides.", e);
        } catch (Exception e) {
            throw new ServletException("Une erreur est survenue lors de l'ajout du favori.", e);
        }
    }
}
