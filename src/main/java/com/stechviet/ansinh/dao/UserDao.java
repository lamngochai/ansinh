package com.stechviet.ansinh.dao;

import java.util.List;

import com.stechviet.ansinh.model.UserInfo;

public interface UserDao {

	public UserInfo findUserInfo(String userName);
	public UserInfo createUserInfo(String emplUser, String emplPass);    
	public int setPermission(int userId , int emplDepartment);  
    public List<String> getUserRoles(UserInfo userInfo);
	public int createProfileUser(int profileId , String emplName, String emplBirth, int lstEmplSex, String emplNation, int liveId,
			String emplEmail, String emplPhone, int bornId, String emplCitizenId, String emplCitizenDate,
			String provinceCitizenID, int emplDepartment, int emplPosition , int agentId);
    
}
