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
            Films flm=new Films(id_film,title,director,genre,duration,synopsis);
            films.add(flm);





    }
        return films;
    }

    @Override
    public List<Films> SearchFilms(String Title) {
        return Collections.emptyList();
    }
}
