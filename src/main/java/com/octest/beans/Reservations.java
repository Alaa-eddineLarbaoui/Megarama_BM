package com.octest.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;
@Entity
public class Reservations {
    public Reservations(Integer reservation_id, Integer film_id, Date reservationDate, Integer numbreOfTickets){
        this.reservation_id = reservation_id;

        this.film_id = film_id;
        this.reservationDate = reservationDate;
        this.numbreOfTickets = numbreOfTickets;

    }
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer reservation_id;
    private Integer user_id;
    private   Integer film_id;

    private Date reservationDate;
    private Integer numbreOfTickets;

    public Reservations(Integer film_id, Integer numbreOfTickets) {
        this.film_id = film_id;
        this.numbreOfTickets=numbreOfTickets;

    }


    public Integer getReservation_id() {
        return reservation_id;
    }

    public void setReservation_id(Integer reservation_id) {
        this.reservation_id = reservation_id;
    }





    public Integer getFilm_id() {
        return film_id;
    }

    public void setFilm_id(Integer film_id) {
        this.film_id = film_id;
    }

    public Date getReservationDate() {
        return reservationDate;
    }

    public void setReservationDate(Date reservationDate) {
        this.reservationDate = reservationDate;
    }

    public Integer getNumbreOfTickets() {
        return numbreOfTickets;
    }

    public void setNumbreOfTickets(Integer numbreOfTickets) {
        this.numbreOfTickets = numbreOfTickets;
    }



}








