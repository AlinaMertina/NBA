package com.nba.statistic.Repository;

import com.nba.statistic.entity.Equipe;

import org.springframework.data.jpa.repository.JpaRepository;
public interface EquipeRepos  extends JpaRepository<Equipe,Long> {
}
