package com.stechviet.ansinh.model;

public class PositionInfo {
	int positionId;
	String positionName;
	
	public PositionInfo(int positionId, String positionName) {
		super();
		this.positionId = positionId;
		this.positionName = positionName;
	}
	public int getPositionId() {
		return positionId;
	}
	public void setPositionId(int positionId) {
		this.positionId = positionId;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
	
}
