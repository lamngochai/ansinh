package com.stechviet.ansinh.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.stechviet.ansinh.model.AddressInfo;
import com.stechviet.ansinh.model.DepartmentInfo;
import com.stechviet.ansinh.model.PositionInfo;
import com.stechviet.ansinh.model.UserInfo;
import com.stechviet.ansinh.service.AddressService;
import com.stechviet.ansinh.service.UserService;
 
@Controller
public class AdminController {
 
	//@Autowired
    private List<AddressInfo> provinceList;
	//@Autowired
	private List<PositionInfo> positionListOther;
	//@Autowired
	private List<DepartmentInfo> departmentListOther;
	
	
    @RequestMapping(value = "/admin_index", method = RequestMethod.GET)
    public String adminIndex(Model model , HttpServletResponse response , HttpServletResponse request ) {
    	Cookie nameCookir = new Cookie("NAME","Nguyễn_Bá_Linh");
    	Cookie avataCookir = new Cookie("AVATA","Themes/images/avatar-5.jpg");
    	response.addCookie(nameCookir);
    	response.addCookie(avataCookir);
    	model.addAttribute("provinceList", provinceList);
    	return "admin/index";
    }
    
    
    @RequestMapping(value = "/admin_mamage_user", method = RequestMethod.GET)
    public String adminManageUsers(Model model) {
        return "admin/manage_user";
    }
    @RequestMapping(value = "/admin_create_user", method = RequestMethod.GET)
    public String adminCreateUsersGet(Model model) {
    	model.addAttribute("provinceList", provinceList);
    	model.addAttribute("positionList", positionListOther);
    	model.addAttribute("departmentList", departmentListOther);
    	return "admin/create_user";
    }
    @Autowired
    private UserService userService;
    @Autowired
    private AddressService addressService;
    @RequestMapping(value = "/admin_create_users", method = RequestMethod.POST ,produces = "application/json")
    public void adminCreateUsersPost(@RequestParam String emplName, @RequestParam String emplBirth, @RequestParam int lstEmplSex, @RequestParam String emplNation, 
    		@RequestParam int lstProvinceLive, @RequestParam int lstDistrictLive, @RequestParam int lstWardLive, @RequestParam String emplStreetLive,
    		@RequestParam String emplEmail, @RequestParam String emplPhone,
    		@RequestParam int lstProvinceBorn, @RequestParam int lstDistrictBorn, @RequestParam int lstWardBorn, @RequestParam String emplStreetBorn,
    		@RequestParam String emplCitizenId,  @RequestParam String emplCitizenDate,  @RequestParam String provinceCitizenID,
    		@RequestParam int emplDepartment,  @RequestParam int emplPosition,
    		@RequestParam String emplUser,  @RequestParam String emplPass, HttpServletResponse response) 
    {
    	String json = "fail";
    	int f = 0;
    	UserInfo userInfo = new UserInfo();
    	userInfo = userService.createUserInfo(emplUser, emplPass);
    	if(userInfo != null) {
    		int userId = userInfo.getUserId();
        	int profileId = userInfo.getProfileId();
        	int j = userService.setPermision(userId,emplDepartment);
        	if(j > 0) {
        		int addressType = 0;
        		int agentId = 0;
        		int liveId = addressService.createAddress(lstProvinceLive,lstDistrictLive,lstWardLive,emplStreetLive,addressType);
        		int bornId = addressService.createAddress(lstProvinceBorn,lstDistrictBorn,lstWardBorn,emplStreetBorn,addressType);
        		f = userService.createProfileUser(profileId,emplName,emplBirth,lstEmplSex,emplNation,liveId,emplEmail,emplPhone,bornId,emplCitizenId,emplCitizenDate,provinceCitizenID,emplDepartment,emplPosition,agentId);
        		if (f > 0) {
        			json = "success";
        		}
        	}
    	}
    	
    	try {
			response.getWriter().write(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    @RequestMapping(value = "/admin_edit_profile", method = RequestMethod.GET)
    public String adminEditProfile(Model model) {
    	model.addAttribute("provinceList", provinceList);
    	return "admin/edit_profile";
    }
    @RequestMapping(value = "/admin_view_profile", method = RequestMethod.GET)
    public String adminViewProfile(Model model) {
        return "admin/view_profile";
    }
    
    @RequestMapping(value = "/digitization_campaign", method = RequestMethod.GET)
    public String adminCampaign(Model model) {
    	model.addAttribute("provinceList", provinceList);
    	return "admin/digitization_campaign";
    }
    @RequestMapping(value = "/create_campaign", method = RequestMethod.GET)
    public String adminCreateCampaign(Model model) {
        return "admin/digitization_campaign_form";
    }
    @RequestMapping(value = "/admin_martyr", method = RequestMethod.GET)
    public String adminMartyr(Model model) {
        return "admin/martyr";
    }
    @RequestMapping(value = "/admin_martyr_approve_complete", method = RequestMethod.GET)
    public String adminApproveComplete(Model model) {
        return "admin/martyr_approve_complete_list";
    }
    @RequestMapping(value = "/admin_martyr_approve", method = RequestMethod.GET)
    public String adminApprove(Model model) {
        return "admin/martyr_approve_list";
    }
}
