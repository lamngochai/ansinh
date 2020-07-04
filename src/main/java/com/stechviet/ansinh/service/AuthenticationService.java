package com.stechviet.ansinh.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.stechviet.ansinh.dao.UserDao;
import com.stechviet.ansinh.model.UserInfo;

@Service
public class AuthenticationService implements UserDetailsService {
	private Logger logger = LoggerFactory.getLogger(AuthenticationService.class);
	@Autowired
	private UserDao userDao;

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserInfo user = userDao.findUserInfo(username);
		if (user == null) {
			throw new UsernameNotFoundException("User " + username + " was not found in the database");
		}
		// [USER,ADMIN,..]
		List<String> roles = userDao.getUserRoles(user);
		List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
		if (roles != null) {
			for (String role : roles) {
				// ROLE_USER, ROLE_ADMIN,..
				GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_" + role);
				grantList.add(authority);
			}
		}
		UserDetails userDetails = (UserDetails) new User(user.getUsername(), "{noop}" + user.getPass(), grantList);

		return userDetails;
	}
}
