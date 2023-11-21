package com.nba.statistic.Repository;

import com.nba.statistic.entity.Ville;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VilleRepos extends JpaRepository<Ville,Long> {
}
