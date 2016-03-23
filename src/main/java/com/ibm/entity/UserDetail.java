package com.ibm.entity;

import java.util.List;

public class UserDetail {
	
	
	private User user;
	private Integer sex;
	private String favourate;
	private Department department;
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public String getFavourate() {
		return favourate;
	}
	public void setFavourate(String favourate) {
		this.favourate = favourate;
	}
	@Override
	public String toString() {
		return "UserDetail [user=" + user + ", sex=" + sex + ", favourate="
				+ favourate + ", department=" + department + "]";
	}
	
	
	
	
	
}
