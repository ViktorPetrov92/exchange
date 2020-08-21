package com.example.task.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// Simple home controller to return index.html
@Controller
public class HomeController {

    @GetMapping("/")
    public String showHomePage() {
        return "index";
    }
}
