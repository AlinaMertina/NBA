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
public class Typepasse {
    @Id
    @SequenceGenerator(
            name = "typepasse_sequence",
            sequenceName = "typepasse_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "typepasse_sequence"
    )
    Long idtype;
    String nomtype;
}
