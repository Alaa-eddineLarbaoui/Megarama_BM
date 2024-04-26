package dao;


import com.octest.beans.User;
import com.octest.config.ConnectionDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {

    @Override
    public int verifieUser(String login, String passWord) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = ConnectionDAO.getConnection();

            preparedStatement = connexion.prepareStatement("select * from Users where email = ? and password_user=?;");
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, passWord);
            ResultSet resultat =  preparedStatement.executeQuery();
            if(resultat.next())
            {
                System.out.println(resultat.getString("type_user"));
                String type =resultat.getString("type_user");
                if(type=="admin")
                {
                    return 1;
                }
                else {
                    return 2;
                }
            }
            else{
                    return 0;
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int insertUser(User user) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = ConnectionDAO.getConnection();

            preparedStatement = connexion.prepareStatement("select * from Users where mail = ?;");
            preparedStatement.setString(1, user.getMail());
            ResultSet resultat =  preparedStatement.executeQuery();
            if(resultat.next())
            {
                return 1;
            }
            else{
                preparedStatement = connexion.prepareStatement("insert into Users values noms(mail,passWord,type) VALUES(?, ?, ?,);");
                preparedStatement.setString(1, user.getMail());
                preparedStatement.setString(2, user.getPassWord());
                preparedStatement.setString(3, user.getType());
                int rowsAffected = preparedStatement.executeUpdate();
                if(rowsAffected == 0) {
                    return 0;
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
        return 2;
    }

    @Override
    public User getUser(String email) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = ConnectionDAO.getConnection();

            preparedStatement = connexion.prepareStatement("select * from Users where email = ? ");
            preparedStatement.setString(1, email);
            ResultSet resultat =  preparedStatement.executeQuery();
            if(resultat.next())
            {
                User user = new user();
                user.setMail(resultat.getString("type_user"));
                user.setPassWord(resultat.getString("password_user"));
                user.setType(resultat.getString("type_user"));
                return user;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
            return null;
    }
}
