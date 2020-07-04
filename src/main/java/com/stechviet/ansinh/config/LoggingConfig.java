package com.stechviet.ansinh.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class LoggingConfig {
	
	@Bean
	@ConfigurationProperties("logging")
	public RequestLoggingFilter logFilter() {
		return new RequestLoggingFilter();
	}

}
