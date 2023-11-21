package com.nba.statistic.Repository;

import com.nba.statistic.entity.Statistiqueparmatch;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface StatistiqueparmatchRepos extends JpaRepository<Statistiqueparmatch,Long> {

    @Query(value = "select sum(idaction) from statistiqueparmatch join match on statistiqueparmatch.idmatch=match.idmatch where idjoueur=:idjoueur and idaction=:idaction and idsaison=:idsaison", nativeQuery = true)
    public Double  ndraction(@Param("idjoueur") Long idjoueur,@Param("idaction") Long idaction,@Param("idsaision") Long idsaison);

    @Query(value = "select sum(idmatch) from statistiqueparmatch join match on statistiqueparmatch.idmatch=match.idmatch where idjoueur=:idjoueur  and idsaison=:idsaison", nativeQuery = true)
    public Double nbrmatchjouer(@Param("idjoueur") Long idjoueur,@Param("idsaision") Long idsaision);

    @Query(value = "select sum(idmatch) from statistiqueparmatch join match on statistiqueparmatch.idmatch=match.idmatch where idsaison=:idsaison", nativeQuery = true)
    public Double nbrmatchsaison(@Param("idsaision") Long idsaision);


}
