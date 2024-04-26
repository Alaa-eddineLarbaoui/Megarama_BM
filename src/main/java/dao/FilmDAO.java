package dao;

import com.octest.beans.Films;

import java.sql.SQLException;
import java.util.List;

public interface FilmDAO {
    List<Films> ShowFilms() throws SQLException, ClassNotFoundException;
    List<Films> SearchFilms(String Title) throws SQLException, ClassNotFoundException;



    List<Films> ShowMovie() throws SQLException, ClassNotFoundException;

}
