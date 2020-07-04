package com.stechviet.ansinh.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.stechviet.ansinh.service.AuthenticationService;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	   AuthenticationService authenticationService;
	
	@Autowired
	   public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
	   System.out.print("aaa");
	       // Các User trong bộ nhớ (MEMORY).
	 
//	       auth.inMemoryAuthentication().withUser("user1").password("12345").roles("USER");
//	       auth.inMemoryAuthentication().withUser("admin1").password("12345").roles("USER, ADMIN");
	 
	   
	       // Các User trong Database
	       auth.userDetailsService(authenticationService);
	 
	   }
	@Override
	   protected void configure(HttpSecurity http) throws Exception {
	 
	       http
	       .csrf().disable()
	       .headers()
			.frameOptions()
				.sameOrigin();
	      
	       // Các trang không yêu cầu login
	       http.authorizeRequests().antMatchers(  "/login","/").permitAll();
	  
	       // For USER Rude only.
	       // Trang chỉ dành cho USER
	       http.authorizeRequests().antMatchers("/user_rude*").access("hasAnyRole('ROLE_User_rude')");
	       
	       // For USER repair only.
	       // Trang chỉ dành cho USER
	       http.authorizeRequests().antMatchers("/user_repair*").access("hasRole('ROLE_User_repair')");
	 
	       // For ADMIN only.
	       // Trang chỉ dành cho ADMIN
	       http.authorizeRequests().antMatchers("/admin_*").access("hasRole('ROLE_Admin')");
	       
	       // For ADMIN only.
	       // Trang chỉ dành cho ADMIN
	       http.authorizeRequests().antMatchers("/root_*").access("hasRole('ROLE_Root')");
	       
	       // For AGENT Admin only.
	       // Trang chỉ dành cho AGENT
	       http.authorizeRequests().antMatchers("/agent_admin*").access("hasRole('ROLE_Agent_admin')");
	 
	       // For AGENT user only.
	       // Trang chỉ dành cho AGENT
	       http.authorizeRequests().antMatchers("/agent_user*").access("hasRole('ROLE_Agent_user')");
	  
	       // Khi người dùng đã login, với vai trò XX.
	       // Nhưng truy cập vào trang yêu cầu vai trò YY,
	       // Ngoại lệ AccessDeniedException sẽ ném ra.
	       http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/permision");
	 
	  
	       // Cấu hình cho Login Form.
	       http.authorizeRequests()
	       .and().
	       formLogin()//
	  
	               // Submit URL của trang login
	               .loginProcessingUrl("/login_check")
	               .loginPage("/login")//
	               .successHandler(myAuthenticationSuccessHandler())
	               .failureUrl("/login?error=true")//
	               .usernameParameter("username")//
	               .passwordParameter("password")
	  
	               // Cấu hình cho Logout Page.
	       .and()
	       .logout().logoutUrl("/logout").logoutSuccessUrl("/login").deleteCookies("JSESSIONID").deleteCookies("NAME").deleteCookies("AVATA")
	       .and()
           .rememberMe().key("uniqueAndSecret").tokenValiditySeconds(86400);
	 
	   }
	@Bean
    public AuthenticationSuccessHandler myAuthenticationSuccessHandler(){
        return new UrlAuthenticationSuccessHandler();
    }
}
