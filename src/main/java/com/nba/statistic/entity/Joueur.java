package com.nba.statistic.entity;

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
public class Joueur {
    @Id
    @SequenceGenerator(
            name = "joueur_sequence",
            sequenceName = "joueur_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "joueur_sequence"
    )
    Long idjoueur;
    String nomjoueur;
}
