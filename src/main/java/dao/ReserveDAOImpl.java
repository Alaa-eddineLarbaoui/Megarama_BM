package dao;

import com.octest.beans.Films;
import com.octest.beans.Reservations;
import com.octest.config.ConnectionDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReserveDAOImpl implements ReserveDAO{





    @Override
    public List<Films> ReserveMovie( Integer Film_id, Integer NumberTickets) throws SQLException, ClassNotFoundException {
        ArrayList<Films> Reserve =new ArrayList<>();
        //  String sqlq = "INSERT INTO Reservations ( reservation_id, user_id, film_id, reservationDate, numbreOfTickets) VALUES (?,?,?,Now(),?)";
        String sqlq = "INSERT INTO Reservations (  film_id, numbreOfTickets,ResrvationDate) VALUES (?,?,Now())";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sqlq);
        // statement.setInt(1, reservation_id);
//        statement.setInt(2, user_id);
        statement.setInt(1, Film_id);
//        statement.setDate(3, new java.sql.Date(ResrvationDate.getTime()));
        statement.setInt(2, NumberTickets);
        statement.executeUpdate();
        return Reserve;

    }
}