package com.nba.statistic.Repository;

import com.nba.statistic.entity.Joueur;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JoueurRepos extends JpaRepository<Joueur,Long> {

}
