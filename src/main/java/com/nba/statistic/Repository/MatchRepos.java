package com.nba.statistic.Repository;

import com.nba.statistic.entity.Match;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MatchRepos extends JpaRepository<Match,Long> {
}
