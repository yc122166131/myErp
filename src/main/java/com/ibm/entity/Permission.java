package com.ibm.entity;

public class Permission {

	private Integer id ;
	private String permissionName;
	private Role role;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPermissionName() {
		return permissionName;
	}
	public void setPermissionName(String permissionName) {
		this.permissionName = permissionName;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Permission [id=" + id + ", permissionName=" + permissionName
				+ ", role=" + role + "]";
	} 
	
}
