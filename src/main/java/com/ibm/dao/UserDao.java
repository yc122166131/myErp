package com.ibm.dao;

import java.util.List;
import java.util.Set;

import com.ibm.entity.Department;
import com.ibm.entity.User;
import com.ibm.entity.UserDetail;

public interface UserDao {

	/**
	 * 通过用户名查询用户
	 * @param userName
	 * @return
	 */
	public User getByUserName(String userName);
	
	/**
	 * 通过用户名查询角色信息
	 * @param userName
	 * @return
	 */
	public Set<String> getRoles(String userName);
	
	/**
	 * 通过用户名查询权限信息
	 * @param userName
	 * @return
	 */
	public Set<String> getPermissions(String userName);
	
	/**
	 * 查询所有员工
	 * @return
	 */
	public List<UserDetail> getEmpInfo();
	
	/**
	 * ͨ通过员工号获取用户
	 * @return User
	 */
	public UserDetail getUserByUserId(Integer id);
	
	/**
	 * ͨ获取全部部门名
	 * @return User
	 */
	public List<Department> getDepts();
	
	/**
	 * ͨ更新员工信息
	 * @return User
	 */
	public void updateEmp(UserDetail userDetail);
}
