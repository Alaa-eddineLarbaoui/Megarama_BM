package dao;

import com.octest.beans.Reaction;
import com.octest.beans.User;

import java.util.List;

public interface ReactionDAO {
   void Save(Reaction reaction);

   List<User> findAll(User u);

}
