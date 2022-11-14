package com.codesigne.marjanepromo.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;


@Entity
@Data @NoArgsConstructor @AllArgsConstructor
public class Promotion implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String status ;

    private int point;

    private LocalDate dateStart;

    private LocalDate dateEnd;

    @ManyToOne
    private AdminCenter adminCenter;

    @ManyToOne
    private SubCategory subCategory;

    //getters and setters

    //ToString function


    @Override
    public String toString() {
        return "Promotion{" +
                "id=" + id +
                ", status='" + status + '\'' +
                ", point=" + point +
                ", dateStart=" + dateStart +
                ", dateEnd=" + dateEnd +
                ", adminCenter=" + adminCenter +
                ", subCategory=" + subCategory +
                '}';
    }




}
