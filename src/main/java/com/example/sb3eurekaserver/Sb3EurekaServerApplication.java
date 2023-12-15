package com.example.sb3eurekaserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class Sb3EurekaServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(Sb3EurekaServerApplication.class, args);
    }
}
