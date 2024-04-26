package dao;

import com.octest.beans.User;

public interface UserDao {
    int verifieUser(String login, String passWord);

    int insertUser(User user);

    User getUser(String email);
}


