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

@WebServlet(name = "DeleteFavoriServlet", value = "/deleteFavori")
public class DeleteFavoriServlet extends HttpServlet {
    private FavorisDAO favorisDAO = new FavorisDAOImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer favorisId = Integer.parseInt(request.getParameter("favoris_id"));
        // Récupérer le favori à supprimer depuis la base de données
        Favoris favoris = favorisDAO.findFavoriById(favorisId);
        if (favoris != null) {
            favorisDAO.delete(favoris);
            response.sendRedirect("listeFavoris.jsp");
        } else {
            response.sendRedirect("erreur.jsp");
        }
    }
}
