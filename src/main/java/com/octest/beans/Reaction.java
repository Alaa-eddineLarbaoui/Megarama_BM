package com.octest.beans;


import javax.persistence.*;

@Entity
public class Reaction {

    public Integer getIdReaction() {
        return idReaction;
    }

    public void setIdReaction(Integer idReaction) {
        this.idReaction = idReaction;
    }

    public String getCommentaire() {
        return Commentaire;
    }

    public void setCommentaire(String commentaire) {
        Commentaire = commentaire;
    }

    public Integer getNotation() {
        return Notation;
    }

    public void setNotation(Integer notation) {
        Notation = notation;
    }

    public Integer getIdUserR() {
        return IdUserR;
    }

    public void setIdUserR(Integer IdUserR) {
        this.IdUserR = IdUserR;
    }

    public Integer getIdFilm() {
        return idFilm;
    }

    public void setIdFilm(Integer idFilm) {
        this.idFilm = idFilm;
    }

    public Reaction(Integer idReaction, String commentaire, Integer notation, Integer IdUserR, Integer idFilm) {
        this.idReaction = idReaction;
        Commentaire = commentaire;
        Notation = notation;
        this.IdUserR = IdUserR;
        this.idFilm = idFilm;
    }

    public Reaction( String commentaire, Integer IdUserR, Integer idFilm) {

        Commentaire = commentaire;
        this.IdUserR = IdUserR;
        this.idFilm = idFilm;
    }

    public Reaction() {
    }

    public Reaction( String Commentaire,Integer idUserR,Integer notation,Integer idFilm) {
        this.Commentaire = Commentaire;
        this.IdUserR = idUserR;
        this.Notation = notation;
        this.idFilm = idFilm;
    }

    @Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idReaction;
    @Column(nullable = true)
    private String Commentaire;
    @Column(nullable = true)
    private Integer Notation;
    private Integer IdUserR;
    private Integer idFilm;
    }

