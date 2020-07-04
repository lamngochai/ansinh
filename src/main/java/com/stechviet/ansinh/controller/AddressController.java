package com.stechviet.ansinh.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.stechviet.ansinh.model.AddressInfo;
import com.stechviet.ansinh.service.AddressService;

@Controller
public class AddressController {
	@Autowired
    private AddressService addressService;
	@RequestMapping(value = "/address_check", method = RequestMethod.POST ,produces = "application/json")
    public void addressCheck(@RequestParam int provinceId ,@RequestParam int districtId,@RequestParam int wardId ,HttpServletResponse response) {
		List<AddressInfo> listAllDistrict = new ArrayList<AddressInfo>();
		List<AddressInfo> listAllWard = new ArrayList<AddressInfo>();
		String json = null;
		if(provinceId != 0 && districtId == 0 && wardId == 0) {
			listAllDistrict = addressService.getAllDistrict(provinceId);
			Map<Integer, String> listDist = new HashMap<Integer, String>();
            for (int i = 0; i < listAllDistrict.size(); i++) {
                listDist.put(listAllDistrict.get(i).getDistrictId(), listAllDistrict.get(i).getDistrict());
            }
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            json = new Gson().toJson(listDist);
		}else {
			listAllWard = addressService.getAllWard(provinceId,districtId);
			Map<Integer, String> listWard = new HashMap<Integer, String>();
            for (int i = 0; i < listAllWard.size(); i++) {
            	listWard.put(listAllWard.get(i).getWardId(), listAllWard.get(i).getWard());
            }
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            json = new Gson().toJson(listWard);
		}
		
            try {
				response.getWriter().write(json);
			} catch (IOException e) {
				e.printStackTrace();
			}
		
    }
	@RequestMapping(value = "/address_create", method = RequestMethod.POST)
	@ResponseBody
    public void addressCreateDistrict(@RequestParam int provinceId ,@RequestParam int districtId,@RequestParam int wardId ,@RequestParam String street,Model model ) {		
//		String rep = "no";
//		int status = 1;
//		int addressType = 1;	
//		//int i = addressDao.createAddress(provinceId,districtId,wardId,street,status,addressType);
//			if(i == 1) {
//				rep = "yes";
//			}
//			model.addAttribute("status", rep);
    }
}
