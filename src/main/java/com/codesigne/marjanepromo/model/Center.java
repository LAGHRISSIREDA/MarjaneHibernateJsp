package com.codesigne.marjanepromo.model;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Entity
@Data @NoArgsConstructor @AllArgsConstructor
public class Center implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String nom;

    private String ville;

    private Boolean dispo;

    @OneToOne(mappedBy = "center")
    private AdminCenter adminCenter;

    @Override
    public String toString() {
        return "Center{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", ville='" + ville + '\'' +
                ", dispo=" + dispo +
                ", adminCenter=" + adminCenter +
                '}';
    }




    //getters and setters

    //toString function

}
