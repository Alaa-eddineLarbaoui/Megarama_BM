package dao;

import com.octest.beans.Favoris;
import com.octest.beans.Films;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public interface FavorisDAO {
    void ajouterFavoris(Favoris favoris) throws SQLException, ClassNotFoundException;
    void supprimerFavoris(Favoris favoris) throws SQLException, ClassNotFoundException;
    List<Films> getFilmsFavoris(int idUtilisateur) throws SQLException, ClassNotFoundException;
}
