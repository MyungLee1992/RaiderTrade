package com.RaiderTrade;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@ComponentScan
@SpringBootApplication
public class RaiderTradeApplication {

	public static void main(String[] args) {
		SpringApplication.run(RaiderTradeApplication.class, args);
	}

}
