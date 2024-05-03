package dao;

import com.octest.beans.Favoris;
import com.octest.beans.Films;

import java.util.List;

public interface FavorisDAO {
    void Save(Favoris favoris);
    List <Films> findAll();
    void delete(Favoris favoris);
}
