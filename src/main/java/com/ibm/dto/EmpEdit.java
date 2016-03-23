package com.ibm.dto;

import java.util.List;

import com.ibm.entity.UserDetail;


public class EmpEdit {
	
	
	private UserDetail userdetail;
	private List<String> favours;
	
	public UserDetail getUserdetail() {
		return userdetail;
	}
	public void setUserdetail(UserDetail userdetail) {
		this.userdetail = userdetail;
	}
	public List<String> getFavours() {
		return favours;
	}
	public void setFavours(List<String> favours) {
		this.favours = favours;
	}
	@Override
	public String toString() {
		return "EmpEdit [userdetail=" + userdetail + ", favours=" + favours
				+ "]";
	}
	
	
}
