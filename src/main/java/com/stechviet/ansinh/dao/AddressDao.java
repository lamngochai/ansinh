package com.stechviet.ansinh.dao;

import java.util.List;

import com.stechviet.ansinh.model.AddressInfo;

public interface AddressDao {
	public List<AddressInfo> getAllProvince() ;
	public List<AddressInfo> getAllDistrict(int provinceId) ;
	public List<AddressInfo> getAllWard(int provinceId , int districtId);
	public int createAddress(int provinceId , int districtId , int wardId , String street, int addressType);
}
