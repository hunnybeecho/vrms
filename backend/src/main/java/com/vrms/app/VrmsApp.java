package com.vrms.app;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.vrms.app.dao")
public class VrmsApp {
    public static void main(String[] args) {
        SpringApplication.run(VrmsApp.class);
    }
}
