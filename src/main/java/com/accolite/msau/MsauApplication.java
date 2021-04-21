package com.accolite.msau;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class MsauApplication implements CommandLineRunner {

	public static void main(String[] args) {
		System.out.println("hello");
		SpringApplication.run(MsauApplication.class, args);
	}

	@Override
	public void run(String... args) {
	}
}
