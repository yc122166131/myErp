package com.ibm.service.impl;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ibm.dao.UserDao;
import com.ibm.entity.User;
import com.ibm.entity.UserDetail;
import com.ibm.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource
	private UserDao userDao;
	
	public User getByUserName(String userName) {
		return userDao.getByUserName(userName);
	}

	public Set<String> getRoles(String userName) {
		return userDao.getRoles(userName);
	}

	public Set<String> getPermissions(String userName) {
		return userDao.getPermissions(userName);
	}

	public List<UserDetail> getEmpInfo() {
		return userDao.getEmpInfo();
	}

	public UserDetail getUserByUserId(Integer id) {
		return userDao.getUserByUserId(id);
	}

	public List<String> getAllDepts() {
		return userDao.getDepts();
	}

}
