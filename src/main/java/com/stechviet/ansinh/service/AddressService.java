package com.stechviet.ansinh.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stechviet.ansinh.dao.AddressDao;
import com.stechviet.ansinh.model.AddressInfo;

@Service
public class AddressService {
	@Autowired
    private AddressDao addressDao;
	
	public List<AddressInfo> getAllDistrict(int provinceId){
		List<AddressInfo> listDistrict = new ArrayList<AddressInfo>();
		listDistrict = addressDao.getAllDistrict(provinceId);
		return listDistrict;
	}
	public List<AddressInfo> getAllWard(int provinceId , int districtId){
		List<AddressInfo> listWard = new ArrayList<AddressInfo>();
		listWard = addressDao.getAllWard(provinceId,districtId);
		return listWard;
	}
	public int createAddress(int provinceId, int districtId, int wardId, String street , int addressType) {
		int i = addressDao.createAddress(provinceId, districtId, wardId, street, addressType);
		return i;
	}
}
