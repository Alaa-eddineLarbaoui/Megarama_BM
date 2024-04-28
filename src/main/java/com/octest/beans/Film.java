package com.octest.beans;

public class Films {
    public Films(Integer film_id, String titre, String director, String genre, Integer duration, String synopsis,String picture) {
        this.film_id = film_id;
        this.titre = titre;
        this.director = director;
        this.genre = genre;
        this.duration = duration;
        this.synopsis = synopsis;
        this.picture=picture;
        this.trailler_url=trailler_url;
        this.background_Url=background_Url;
    }

    public Films(Integer film_id, String titre ,String picture) {
        this.film_id = film_id;
        this.titre = titre;
        this.picture=picture;
    }

    public Films(Integer film_id, String titre, String director, String genre, Integer duration, String synopsis,  String trailler_url,String background_Url ,String picture) {
        this.film_id = film_id;
        this.titre = titre;
        this.director = director;
        this.genre = genre;
        this.duration = duration;
        this.synopsis = synopsis;
        this.trailler_url=trailler_url;
        this.background_Url=background_Url;
        this.picture=picture;
    }
    public Films( String titre, String director, String genre, Integer duration, String synopsis ,String picture) {
        this.titre = titre;
        this.director = director;
        this.genre = genre;
        this.duration = duration;
        this.synopsis = synopsis;
        this.picture=picture;
    }

    private   Integer film_id;
   private String titre;
   private String director;
    private String genre;
    private Integer duration;
    private String synopsis;
    private String trailler_url;


    private String background_Url;





    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    private String picture;

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

    public String gettrailler_url() {
        return trailler_url;
    }

    public void settrailler_url(String trailler_url) {
        this.trailler_url = trailler_url;
    }
    public String getBackground_Url() {return background_Url;}

    public void setBackground_Url(String background_Url) {this.background_Url = background_Url;}


}
