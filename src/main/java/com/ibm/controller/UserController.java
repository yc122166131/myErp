package com.ibm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;




import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ibm.dto.EmpEdit;
import com.ibm.entity.Department;
import com.ibm.entity.User;
import com.ibm.entity.UserDetail;
import com.ibm.service.UserService;
import com.ibm.utils.favourateEnum;



/**
 * �û�Controller��
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	private UserService userservice;
	
	
	/**
	 * 登录
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request){
		Subject subject=SecurityUtils.getSubject();
		UsernamePasswordToken token=new UsernamePasswordToken(user.getUserName(), user.getPassword());
		try{
			subject.login(token);
			Session session=subject.getSession();
			System.out.println("sessionId:"+session.getId());
			System.out.println("sessionHost:"+session.getHost());
			System.out.println("sessionTimeout:"+session.getTimeout());
			//session.setAttribute("info", "session的值");
			return "redirect:/success.jsp";
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("user", user);
			request.setAttribute("errorMsg", "账号或者密码错误");
			return "index";
		}
	}
	
	
	/**
	 * 查询所有员工信息
	 * @return
	 */
	@RequestMapping(value="/emplist")
	public String empList(Map<String,Object> map){
		
		List<UserDetail> emps = userservice.getEmpInfo();
		map.put("userInfo", emps);
		return "emplist";
	}
	
	@RequestMapping(value="/empEdit")
	public String empEdit(@RequestParam("id") Integer id,Map<String,Object> map){
		
		//根据员工号获取该员工的所有信息
		UserDetail Edit_user = userservice.getUserByUserId(id);
		
		//该员工的 喜好list
		List<String> myfavours = new ArrayList<String>();
		//1,2,3
		String d_favs = Edit_user.getFavourate();
		String[] s_favs = d_favs.split(",");
		for(int i = 0 ; i < s_favs.length ; i++){
			myfavours.add(s_favs[i]);
		}
		
		//系统设定的员工喜好 总列表 map
		Map<String,String>  favours = new LinkedHashMap<String,String>();
		for(int _index = 0 ; _index < favourateEnum.fav.size() ; _index++){
			favours.put(""+_index, favourateEnum.fav.get(_index));
		}
		
		//获取所有部门名字
		List<String> depts = userservice.getAllDepts();
		
		EmpEdit u_edit = new EmpEdit();
		u_edit.setUserdetail(Edit_user);
		u_edit.setFavours(myfavours);
		
		map.put("edit_user", u_edit);
		map.put("favours", favours);
		map.put("departments", depts);
		
		return "empedit";
		
	}
	
	
	
	
	@RequestMapping(value="/aaa")
	public String Regis(EmpEdit edit){
		
		System.out.println(edit);
		
		return "Regis";
	}
	
	

}
