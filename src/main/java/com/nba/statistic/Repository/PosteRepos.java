package com.nba.statistic.Repository;

import com.nba.statistic.entity.Poste;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PosteRepos extends JpaRepository<Poste,Long> {
}
