package com.octest.beans;

import javax.persistence.*;

@Entity
@Table(name="Reaction")
public class Reaction {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)

    private Long idReaction;
    @Column
    private Long iduser;
@JoinColumn()
    public void setIdReaction(Long idReaction) {
        this.idReaction = idReaction;
    }

    public Long getIdReaction() {
        return idReaction;
    }
}

