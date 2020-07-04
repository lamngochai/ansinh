package com.stechviet.ansinh.config;

import java.io.IOException;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class UrlAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	
	 
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
			handle(request, response, authentication);
	        clearAuthenticationAttributes(request);

	}
	private void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {
		boolean hasUserRepairRole = false;
		boolean hasUserRudeRole = false;
		boolean hasAdminRole = false;
		boolean hasRootRole = false;
		boolean hasAgentAdminRole = false;
		boolean hasAgentUserRole = false;
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		for (GrantedAuthority grantedAuthority : authorities) {
			if (grantedAuthority.getAuthority().equals("ROLE_User_repair")) {
				hasUserRepairRole = true;
				break;
			} 
			else if (grantedAuthority.getAuthority().equals("ROLE_User_rude")) {
				hasUserRudeRole = true;
				break;
			}
			else if (grantedAuthority.getAuthority().equals("ROLE_Admin")) {
				hasAdminRole = true;
				break;
			}
			else if (grantedAuthority.getAuthority().equals("ROLE_Root")) {
				hasRootRole = true;
				break;
			}
			else if (grantedAuthority.getAuthority().equals("ROLE_Agent_admin")) {
				hasAgentAdminRole = true;
				break;
			}
			else if (grantedAuthority.getAuthority().equals("ROLE_Agent_user")) {
				hasAgentUserRole = true;
				break;
			}
		}

		if (hasUserRepairRole) {
			redirectStrategy.sendRedirect(request, response, "/user_repair_index");
		} else if (hasUserRudeRole) {
			redirectStrategy.sendRedirect(request, response, "/user_redu_index");
		} else if (hasAdminRole) {
			redirectStrategy.sendRedirect(request, response, "/admin_index");
		} else if (hasRootRole) {
			redirectStrategy.sendRedirect(request, response, "/root_index");
		} else if (hasAgentAdminRole) {
			redirectStrategy.sendRedirect(request, response, "/agent_admin_index");
		} else if (hasAgentUserRole) {
			redirectStrategy.sendRedirect(request, response, "/agent_user_index");
		}else {
			throw new IllegalStateException();
		}
		
	}
	
	private void clearAuthenticationAttributes(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
	    if (session == null) {
	        return;
	    }
	    session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
		
	}

}
