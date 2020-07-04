package com.stechviet.ansinh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stechviet.ansinh.dao.UserDao;
import com.stechviet.ansinh.model.UserInfo;

@Service
public class UserService {
	@Autowired
    private UserDao userDao;
	
	public UserInfo createUserInfo(String emplUser, String emplPass) {
		UserInfo userInfo = new UserInfo();
		userInfo = userDao.createUserInfo(emplUser, emplPass);
		return userInfo;
	}
	public int setPermision(int userId , int emplDepartment) {
		int i = 0;
		i = userDao.setPermission(userId, emplDepartment);
		return i;
	}
	public int createProfileUser(int profileId, String emplName,String emplBirth,int lstEmplSex, String emplNation,
			int liveId, String emplEmail, String emplPhone, int bornId, String emplCitizenId, String emplCitizenDate, String provinceCitizenID,
			int emplDepartment, int emplPosition , int agentId) {
		int i = userDao.createProfileUser(profileId , emplName,emplBirth,lstEmplSex,emplNation,liveId,emplEmail,emplPhone,bornId,emplCitizenId,emplCitizenDate,provinceCitizenID,emplDepartment,emplPosition, agentId);
		return i ;
	}
}
