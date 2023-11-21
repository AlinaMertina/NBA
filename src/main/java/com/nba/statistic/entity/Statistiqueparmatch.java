package com.nba.statistic.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.java.Log;

import java.sql.Time;
import java.sql.Timestamp;

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
    Long idjoueur;
    Long idmatch;
    Long idaction;
    Timestamp date;
}
