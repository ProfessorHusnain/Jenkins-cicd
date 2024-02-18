package com.example.jenkinscicd;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class JenkinsCicdApplication {

    public static void main(String[] args) {
        SpringApplication.run(JenkinsCicdApplication.class, args);
    }
    @GetMapping
    public String welcomeNote(){
        return "welcome on updated cicd";
    }
}
