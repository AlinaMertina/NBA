package com.nba.statistic.entity;

import jakarta.persistence.Entity;
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
