package com.nba.statistic.entity;

import java.security.Timestamp;
import jakarta.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Entrersortie {
   
    @Id
    @SequenceGenerator(
            name = "entrersortie_sequence",
            sequenceName = "entrersortie_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "entrersortie_sequence"
    )
    Long identrersortie;
    Long idmatch;
    Long idjoueur;
    Timestamp entrer;
    Timestamp sortie;

}
