package com.nba.statistic.Repository;

import com.nba.statistic.entity.Entrersortie;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
public interface EntrersortieRepos extends  JpaRepository<Entrersortie,Long> {

     @Query(value = "select sum(EXTRACT(EPOCH FROM (sortie - entrer)) / 60) from entrersortie join match on entrersortie.idmatch=match.idmatch where idjoueur=:idjoueur  and idsaision=:idsaison", nativeQuery = true)
    public Double nbrmatchjouer(@Param("idjoueur") Long idjoueur,@Param("idsaision") Long idsaision);
    
}
