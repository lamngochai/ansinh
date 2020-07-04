package com.stechviet.ansinh.config;

import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ClassPathXmlApplicationContext;

@Configuration
public class DynamicQueryConfig {
	@Bean
	@SuppressWarnings("unchecked")
	public Map<String, String> queries(){
		Map<String, String> mapQueries = null;
		try(ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath:jdbc-query.xml")) {
			mapQueries = (Map<String, String>) context.getBean("mapQueries");
		}
		return mapQueries;
	}
}
