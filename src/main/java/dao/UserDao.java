package dao;

import com.octest.beans.User;

public interface UserDao {
       String verifieUser(String login, String passWord);
       boolean insertUser(User user);
}
