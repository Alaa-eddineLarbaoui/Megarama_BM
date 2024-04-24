package dao;


import com.octest.beans.User;
import com.octest.config.ConnectionDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {

    @Override
    public String verifieUser(String login, String passWord) {
        return null;
    }

    @Override
    public boolean insertUser(User user) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = ConnectionDAO.getConnection();
            preparedStatement = connexion.prepareStatement("insert into Users values noms(mail,passWord,type) VALUES(?, ?, ?,);");
            preparedStatement.setString(1, user.getMail());
            preparedStatement.setString(2, user.getPassWord());
            preparedStatement.setDate(3, user.getType());
            preparedStatement.executeUpdate();

            preparedStatement = connexion.prepareStatement("Update Room set set dispnobilite=false where idRoom = ?");
            preparedStatement.setInt(1,reservation.getChambreReservee());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }
}
