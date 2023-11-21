package com.nba.statistic.Repository;

import com.nba.statistic.entity.Saison;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SaisonRepos extends JpaRepository<Saison,Long> {
}
