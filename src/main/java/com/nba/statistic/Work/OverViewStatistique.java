package com.nba.statistic.Work;

import org.springframework.data.repository.query.Param;

import com.nba.statistic.Repository.DetailequipeRepos;
import com.nba.statistic.Repository.EntrersortieRepos;
import com.nba.statistic.Repository.EquipeRepos;
import com.nba.statistic.Repository.JoueurRepos;
import com.nba.statistic.Repository.StatistiqueparmatchRepos;
import com.nba.statistic.Repository.TypepasseRepos;
import com.nba.statistic.entity.Joueur;
import com.nba.statistic.entity.Detailequipe;
import com.nba.statistic.entity.Equipe;

import java.util.Comparator;
import java.util.List;
import java.util.Collections;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class OverViewStatistique  {
    String joueur;
    String equipe;
    Double m;
    Double mj;
    Double ppm;
    Double rpm;
    Double pdpm;
    Double mpm;
    Double eff;
    Double fg;
    Double p3;
    Double lf;
    Double moyenne;

    public java.util.List<OverViewStatistique> getstatistique(Long idsaison,DetailequipeRepos detailequipeRepos,EquipeRepos equipeRepos,JoueurRepos joueurRepos,TypepasseRepos typepasseRepos,StatistiqueparmatchRepos statistiqueparmatchRepos,EntrersortieRepos entrersortieRepos){
        java.util.List<OverViewStatistique> resulta = new java.util.ArrayList<OverViewStatistique>();
        java.util.List<Detailequipe> listeDetailequipes = detailequipeRepos.findAll();
        Double match = statistiqueparmatchRepos.nbrmatchsaison(idsaison);
        
        for(int i=0;i<listeDetailequipes.size();i++){
            Long idjoueur = listeDetailequipes.get(i).getIdjoueur();
            Joueur joueur = joueurRepos.findById(listeDetailequipes.get(i).getIdjoueur()).get();
            Equipe equipe = equipeRepos.findById(listeDetailequipes.get(i).getIdequipe()).get();
            Double matchjoueur = statistiqueparmatchRepos.nbrmatchjouer(listeDetailequipes.get(i).getIdjoueur(), idsaison);
            Double ppm1 = (statistiqueparmatchRepos.ndraction(listeDetailequipes.get(i).getIdjoueur(),1L,idsaison)*1 )+(statistiqueparmatchRepos.ndraction(listeDetailequipes.get(i).getIdjoueur(),2L,idsaison)*2 )+(statistiqueparmatchRepos.ndraction(listeDetailequipes.get(i).getIdjoueur(),3L,idsaison)*3) / matchjoueur;
            Double rpm1 = statistiqueparmatchRepos.ndraction(idjoueur, 5L, idsaison)+statistiqueparmatchRepos.ndraction(idjoueur, 6L, idsaison);
            Double pdpm1 = statistiqueparmatchRepos.ndraction(idjoueur, 4L, idsaison);
            Double mpm1 = entrersortieRepos.nbrmatchjouer(idjoueur, idsaison);
            Double fg1 = ((statistiqueparmatchRepos.ndraction(idjoueur,1L,idsaison))+(statistiqueparmatchRepos.ndraction(idjoueur,2L,idsaison))+(statistiqueparmatchRepos.ndraction(idjoueur,3L,idsaison))+0.5 *(statistiqueparmatchRepos.ndraction(idjoueur,3L,idsaison)) ) / (statistiqueparmatchRepos.ndraction(idjoueur,1L,idsaison)+statistiqueparmatchRepos.ndraction(idjoueur,2L,idsaison)+statistiqueparmatchRepos.ndraction(idjoueur,3L,idsaison));
            Double eff1 = (ppm1+pdpm1+rpm1)/matchjoueur ;
            Double p31= statistiqueparmatchRepos.ndraction(idjoueur,3L,idsaison)/100;
            Double lf1 = statistiqueparmatchRepos.ndraction(idjoueur,1L,idsaison) / statistiqueparmatchRepos.ndraction(idjoueur,9L,idsaison);
            Double moyenne1 = ppm1+rpm1+pdpm1+mpm1+eff1+fg1+p31+lf1;

            OverViewStatistique overViewStatistique = new OverViewStatistique(
            joueur.getNomjoueur(),
            equipe.getNomequipe(),
            match,
            matchjoueur,
            ppm1,
            rpm1,
            pdpm1,
            mpm1,
            eff1,
            fg1,
            p31,
            lf1,
            moyenne1);
            resulta.add(overViewStatistique);
        }
        Comparator<OverViewStatistique> ageComparator = Comparator.comparingDouble(OverViewStatistique::getMoyenne);
        Collections.sort(resulta, ageComparator.reversed());
        return resulta ;
    }
   


}
