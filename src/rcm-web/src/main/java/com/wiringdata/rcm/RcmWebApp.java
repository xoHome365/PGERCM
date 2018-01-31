package com.wiringdata.rcm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableAutoConfiguration
@SpringBootApplication
public class RcmWebApp {

    public static void main(String[] args) throws Exception {
        SpringApplication.run(RcmWebApp.class, args);
    }
}
