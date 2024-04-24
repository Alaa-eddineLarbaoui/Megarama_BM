package dao;

import com.octest.beans.Details;

import java.sql.SQLException;
import java.util.List;

public interface DetailDAO {
    List<Details> ShowFilms() throws SQLException, ClassNotFoundException;
    List<Details> SearchFilms(String Title) throws SQLException, ClassNotFoundException;
}
