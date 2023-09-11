package com.amiel.resume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/goToHome")
    public String goToHome(){
        return "home";
    }
}
