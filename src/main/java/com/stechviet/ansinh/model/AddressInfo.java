package com.stechviet.ansinh.model;

public class AddressInfo {
	int provinceId;
	String province;
	int districtId;
	String district;
	int wardId;
	String ward;
	String street;
	
	public AddressInfo(String province, String district, String ward, String street) {
		super();
		this.province = province;
		this.district = district;
		this.ward = ward;
		this.street = street;
	}

	public AddressInfo(int provinceId, int districtId, String district) {
		super();
		this.districtId = districtId;
		this.district = district;
	}
	
	

	public AddressInfo(int provinceId, int districtId, int wardId, String ward) {
		super();
		this.provinceId = provinceId;
		this.districtId = districtId;
		this.wardId = wardId;
		this.ward = ward;
	}



	public AddressInfo(int provinceId, String province) {
		super();
		this.provinceId = provinceId;
		this.province = province;
	}
	
	
	public int getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(int provinceId) {
		this.provinceId = provinceId;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public int getDistrictId() {
		return districtId;
	}
	public void setDistrictId(int districtId) {
		this.districtId = districtId;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public int getWardId() {
		return wardId;
	}
	public void setWardId(int wardId) {
		this.wardId = wardId;
	}
	public String getWard() {
		return ward;
	}
	public void setWard(String ward) {
		this.ward = ward;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
}
