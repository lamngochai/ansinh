package com.stechviet.ansinh.model;

import java.io.Serializable;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class UserInfo implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = -6811310940556085823L;
	private String username;
    private String pass;
    private int profileId;
    private int userId;
    
}
