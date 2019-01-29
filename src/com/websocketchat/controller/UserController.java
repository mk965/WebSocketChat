package com.websocketchat.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.websocketchat.service.UserService;

@Controller
public class UserController {

	@Resource
	private UserService service;
	
	@RequestMapping(value = "updateUserInfo", method = RequestMethod.POST)  
    @ResponseBody  
    public String SimpleData(String user_face,String user_name,String user_qianming,String user_mail) {
		service.updateUser(user_name, user_face, user_qianming,user_mail);
		service.updatePermission(user_name,"users",user_mail);
        return "success";  
    }  
	
	/**
	 * 添加用户信息
	 * 
	 * @param username
	 * @param password
	 * @param permission
	 */
	@RequestMapping(value="addUser")
	public void addUser(String username,String password,String user_mail){
		service.addUser(username, password, user_mail);
		service.addUserPermission(username, "user");
	}
	/**
	 * 删除用户操作
	 * 
	 * @param id
	 */
	@RequestMapping(value="deleteUser")
	public String deleteUser(@RequestParam("id") String id) {

		service.deleteUsers(Integer.parseInt(id));
		return "redirect:/admin/admin_userlist";
	}

  
}
