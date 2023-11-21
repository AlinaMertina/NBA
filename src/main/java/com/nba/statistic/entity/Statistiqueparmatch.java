package com.nba.statistic.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.java.Log;

import java.sql.Time;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Statistiqueparmatch {
    @Id
    @SequenceGenerator(
            name = "statistiqueparmatch_sequence",
            sequenceName = "statistiqueparmatch_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "statistiqueparmatch_sequence"
    )
    Long idstatistiqueparmatch;
    Long iddetailequipe;
    Long idjoueur;
    Long idmatch;
    Double point1;
    Double point2;
    Double point3;
    Double passedecisif;
    Double rd;
    Double ro;
    Double block;
    Time mpm;
    Double tnmpoint1;
    Double tnmpoint2;
    Double tnmpoint3;
}
