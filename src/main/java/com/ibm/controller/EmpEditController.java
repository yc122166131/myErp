package com.ibm.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ibm.dto.EmpEdit;
import com.ibm.entity.UserDetail;
import com.ibm.service.UserService;


@Controller
@RequestMapping("/edit")
public class EmpEditController {

	
	@Resource
	private UserService userservice;
	
	@ModelAttribute
	public void getEmp(@RequestParam(value="id",required=false) Integer id,Map<String,Object> map){ //HTTP Status 400 - Required Integer parameter 'id' is not present
		System.out.println("ModelAttribute method");
		if(id != null){
			EmpEdit empEdit = new EmpEdit();
			//根据员工号获取该员工的所有信息
			UserDetail ud = userservice.getUserByUserId(id);
			empEdit.setUserdetail(ud);
			empEdit.setFavours(null);
			map.put("abc", empEdit);
			//或者是 map.put("empEdit(这里的值必须是下面的实参类型的首字母小写!)", empEdit);  
		}
	}
	
	
	/**
	 * put请求 
	 * @param EmpEdit edit
	 * @return
	 */
	@RequestMapping(value="/aaa",method=RequestMethod.PUT)
	public String Regis(@ModelAttribute("abc") EmpEdit edit){
		
		String favourite = "";
		List<String> favs = edit.getFavours();
		for(int i = 0 ; i < favs.size();i++){
			if(i < favs.size()-1){
				favourite += favs.get(i)+",";
			}else{
				favourite += favs.get(i);
			}
		}
			
		edit.getUserdetail().setFavourate(favourite);
		UserDetail userDetail = edit.getUserdetail();
		userservice.updateEmp(userDetail);
		
		// return "/user/emplist";       HTTP Status 404 - /myErp/user/emplist.jsp
		return "redirect:/user/emplist"; 
	   
	}
	
}
