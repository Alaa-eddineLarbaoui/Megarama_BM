package dao;

import com.octest.beans.Films;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public interface ReserveDAO {
    List<Films> ReserveMovie(Integer Film_id, Integer NumberTickets) throws SQLException, ClassNotFoundException;
}





