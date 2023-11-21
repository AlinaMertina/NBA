package com.nba.statistic.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/huhu")
public class TestController {
    @GetMapping("/")
    public String index(){
        return "Ndao ary euh";
    }
}
