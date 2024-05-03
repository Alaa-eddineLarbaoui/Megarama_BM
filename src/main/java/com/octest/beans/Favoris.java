package com.octest.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Favoris {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer favoris_id;
    private Integer film_id;
    private Integer idUser;


    public Favoris(Integer favoris_id,Integer film_id , Integer idUser) {
        this.favoris_id=favoris_id;
        this.film_id = film_id;
        this.idUser = idUser;
    }

    public Favoris() {

    }

    public Integer getFavoris_id() {
        return favoris_id;
    }

    public void setFavoris_id(Integer favoris_id) {
        this.favoris_id = favoris_id;
    }

    public Integer getFilm_id() {
        return film_id;
    }

    public void setFilm_id(Integer film_id) {
        this.film_id = film_id;
    }

    public Integer getIdUser() {
        return idUser;
    }

    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }


}
