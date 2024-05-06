package com.octest.dao;

import com.octest.beans.Favoris;

import java.util.List;

public interface FavorisDAO {
    void ajouterFavori(Favoris favoris);
    void supprimerFavori(int favorisId);
    List<Favoris> obtenirFavorisUtilisateur(int idUser);
}
