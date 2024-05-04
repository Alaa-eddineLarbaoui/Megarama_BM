package dao;

import com.octest.beans.Films;
import com.octest.beans.Reservations;
import com.octest.config.ConnectionDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReserveDAOImpl implements ReserveDAO{





    @Override
    public List<Films> ReserveMovie( Integer Film_id, Integer NumberTickets) throws SQLException, ClassNotFoundException {
        ArrayList<Films> Reserve =new ArrayList<>();
        //  String sqlq = "INSERT INTO Reservations ( reservation_id, user_id, film_id, reservationDate, numbreOfTickets) VALUES (?,?,?,Now(),?)";

        String sqlq = "INSERT INTO Reservations (film_id, numbreOfTickets,reservationDate) VALUES (?,?,?)";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sqlq);

//        statement.setInt(2, user_id);
        statement.setInt(1, 10);
        java.sql.Date sqlDate = java.sql.Date.valueOf(LocalDate.now());
        statement.setDate(3, sqlDate);
        statement.setInt(2, 3);
        statement.executeUpdate();
        return Reserve;

    }
}