package dao;

import com.octest.beans.Film;

import java.sql.SQLException;
import java.util.List;

public interface FilmDAO {
    List<Film> ShowFilms() throws SQLException, ClassNotFoundException;
    List<Film> SearchFilms(String Title) throws SQLException, ClassNotFoundException;
}
