package com.octest.beans;

public class Film {
    public Film(Integer film_id, String titre, String director, String genre, Integer duration, String synopsis) {
        this.film_id = film_id;
        this.titre = titre;
        this.director = director;
        this.genre = genre;
        this.duration = duration;
        this.synopsis = synopsis;
    }

    private   Integer film_id;
   private String titre;
   private String director;
    private String genre;
    private Integer duration;
    private String synopsis;

    public Integer getFilm_id() {
        return film_id;
    }

    public void setFilm_id(Integer film_id) {
        this.film_id = film_id;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Integer getDuration() {
        return duration;
    }

    public void setDuration(Integer duration) {
        this.duration = duration;
    }

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }


}
