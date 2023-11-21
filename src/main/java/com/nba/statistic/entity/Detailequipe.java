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
public class Detailequipe {
    @Id
    @SequenceGenerator(
            name = "detailequipe_sequence",
            sequenceName = "detailequipe_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "detailequipe_sequence"
    )
    Long iddetailequipe;
    Long idequipe;
    Long idjoueur;
}
