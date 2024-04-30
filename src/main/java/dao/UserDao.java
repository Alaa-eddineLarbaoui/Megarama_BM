package dao;

import com.octest.beans.User;

import java.sql.SQLException;

public interface UserDao {
    int verifieUser(String login, String passWord);

    void insertUser(User user);

    User getUser(String email) throws SQLException, ClassNotFoundException;

    int getEndId();
}


