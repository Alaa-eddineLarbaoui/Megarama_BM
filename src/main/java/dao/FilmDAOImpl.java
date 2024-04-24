package dao;

import com.octest.beans.Film;
import com.octest.config.ConnectionDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FilmDAOImpl implements FilmDAO{
    @Override
    public List<Film> ShowFilms() throws SQLException, ClassNotFoundException {
        ArrayList<Film> films=new ArrayList<>();
        String sql="SELECT *FROM films";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        ResultSet resultat = statement.executeQuery();

        while (resultat.next()) {
            Integer id_film = resultat.getInt("film_id");
             String title=resultat.getString("titre");
           String director =resultat.getString("director");
            String genre = resultat.getString("genre");
            Integer duration=resultat.getInt("duration");
            String synopsis=resultat.getString("synopsis");
            Film flm=new Film(id_film,title,director,genre,duration,synopsis);
            films.add(flm);





    }
        return films;
    }

    @Override
    public List<Film> SearchFilms(String Title) throws SQLException, ClassNotFoundException {
        ArrayList<Film> SearchFilmsRe=new ArrayList<>();
        String requet = "SELECT * FROM  films WHERE titre=?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(requet);
        statement.setString(1,Title);
        ResultSet resultat = statement.executeQuery();

        while (resultat.next()) {
            Integer id_film = resultat.getInt("film_id");
            String title=resultat.getString("titre");
            String director =resultat.getString("director");
            String genre = resultat.getString("genre");
            Integer duration=resultat.getInt("duration");
            String synopsis=resultat.getString("synopsis");

            Film searchfilms=new Film(id_film,title,director,genre,duration,synopsis);
            SearchFilmsRe.add(searchfilms);

        }

        return SearchFilmsRe;
    }}

