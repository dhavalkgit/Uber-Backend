package com.example.uberprojectservicediscovery;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class UberProjectServiceDiscoveryApplication {

	public static void main(String[] args) {
		SpringApplication.run(UberProjectServiceDiscoveryApplication.class, args);
	}

}
