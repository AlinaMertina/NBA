package com.nba.statistic.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.nba.statistic.Repository.DetailequipeRepos;
import com.nba.statistic.Repository.EntrersortieRepos;
import com.nba.statistic.Repository.EquipeRepos;
import com.nba.statistic.Repository.JoueurRepos;
import com.nba.statistic.Repository.StatistiqueparmatchRepos;
import com.nba.statistic.Repository.TypepasseRepos;
import com.nba.statistic.Work.OverViewStatistique;
import com.nba.statistic.Work.ResponseWork;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping
@RequiredArgsConstructor
public class StatisticRest {
    private final DetailequipeRepos detailequipeRepos;
    private final EquipeRepos equipeRepos;
    private final JoueurRepos joueurRepos;
    private final TypepasseRepos typepasseRepos;
    private final  StatistiqueparmatchRepos statistiqueparmatchRepos;
    private final EntrersortieRepos entrersortieRepos;

    @GetMapping("/statistic/donner")
    public ResponseWork proformat(@RequestParam("idsaison")  Long idsaison){
        ResponseWork reponse = new ResponseWork();
        try {
            reponse= new ResponseWork(null,new OverViewStatistique().getstatistique(idsaison,detailequipeRepos,equipeRepos,joueurRepos,typepasseRepos,statistiqueparmatchRepos,entrersortieRepos));
            return reponse;
        
        } catch (Exception e) {
            System.out.println(e.getMessage());
            reponse = new ResponseWork(e.getMessage(),null);
            return reponse;
        }
    }

}
