package dao;

import com.octest.beans.Favoris;
import com.octest.beans.Films;
import com.octest.config.ConnectionDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FavorisDAOImpl implements FavorisDAO {
    private Connection connection;

    public FavorisDAOImpl() throws SQLException, ClassNotFoundException {
        this.connection = ConnectionDAO.getConnection();
    }

    @Override
    public void ajouterFavoris(Favoris favoris) throws SQLException {
        String query = "INSERT INTO favoris (id_user, film_id) VALUES (?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, favoris.getIdUser());
            preparedStatement.setInt(2, favoris.getFilm_id());
            preparedStatement.executeUpdate();
        }
    }

    @Override
    public void supprimerFavoris(Favoris favoris) throws SQLException {
        String query = "DELETE FROM favoris WHERE id_user = ? AND film_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, favoris.getIdUser());
            preparedStatement.setInt(2, favoris.getFilm_id());
            preparedStatement.executeUpdate();
        }
    }

    @Override
    public List<Films> getFilmsFavoris(int id_user) throws SQLException {
        List<Films> filmsFavoris = new ArrayList<>();
        String query = "SELECT * FROM films WHERE film_id IN (SELECT film_id FROM favoris WHERE id_user = ?)";
        try (PreparedStatement Statement = connection.prepareStatement(query)) {
            Statement.setInt(1, id_user);
            ResultSet resultSet = Statement.executeQuery();
            while (resultSet.next()) {
                Films film = new Films();
                film.setFilm_id(resultSet.getInt("id_film"));
                film.setTitre(resultSet.getString("titre"));
                film.setPicture(resultSet.getString("picture"));
                filmsFavoris.add(film);
            }
        }
        return filmsFavoris;
    }
}
