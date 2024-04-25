package dao;

import com.octest.beans.Films;
import com.octest.config.ConnectionDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class FilmDAOImpl implements FilmDAO{
    @Override
    public List<Films> ShowFilms() throws SQLException, ClassNotFoundException {
        ArrayList<Films> films=new ArrayList<>();
        String sql="SELECT film_id, titre , picture FROM films";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        ResultSet resultat = statement.executeQuery();

        while (resultat.next()) {
            Integer id_film = resultat.getInt("film_id");
             String title=resultat.getString("titre");
            String picture=resultat.getString("picture");
            Films flm=new Films(id_film,title,picture);
            films.add(flm);





    }
        return films;
    }

    @Override
    public List<Films> SearchFilms(String Title) throws SQLException, ClassNotFoundException {
        ArrayList<Films> SearchFilmsRe=new ArrayList<>();
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
            String picture=resultat.getString("picture");


            Films searchfilms=new Films(id_film,title,director,genre,duration,synopsis,picture);
            SearchFilmsRe.add(searchfilms);

        }

        return SearchFilmsRe;
    }

    @Override
    public List<Films> ShowMovie() throws SQLException, ClassNotFoundException {
        ArrayList<Films> Detailsfilms=new ArrayList<>();
        String requet = "SELECT * FROM  films ";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(requet);

        ResultSet resultat = statement.executeQuery();

        while (resultat.next()) {
            Integer id_film = resultat.getInt("film_id");
            String title=resultat.getString("titre");
            String director =resultat.getString("director");
            String genre = resultat.getString("genre");
            Integer duration=resultat.getInt("duration");
            String synopsis=resultat.getString("synopsis");



            Films detailsfilms=new Films(id_film,title,director,genre,duration,synopsis);
            Detailsfilms.add(detailsfilms);

        }

        return Detailsfilms;
    }
}

