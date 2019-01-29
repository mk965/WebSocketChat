package com.websocketchat.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.websocketchat.beans.Notice;
import com.websocketchat.beans.Users;
import com.websocketchat.service.LoginService;
import com.websocketchat.service.NoticeService;
import com.websocketchat.service.UserService;

@Controller
public class LoginController {

	@Resource
	private LoginService service;
	@Resource
	private UserService service_user;
	@Resource
	private NoticeService service_noticce;
	
	private UsernamePasswordToken token;

	@RequestMapping(value = "login")
	public String login() {

		return "login";
	}
	@RequestMapping(value = "admin/adminlogin")
	public String adminlogin() {

		return "admin/adminlogin";
	}

	
	@RequestMapping(value = "dologin")
	public String doLogin(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("输入的userName：" + userName);
		System.out.println("输入的password：" + password);
		
		// Shiro过滤

		/**
		 * 收集用户身份和证明
		 */
		token = new UsernamePasswordToken(userName, password);// 创建用户名/密码身份验证Token（即用户身份/凭证）
		token.setRememberMe(true);
		/**
		 * 提交身份和证明
		 */
		Subject subject = SecurityUtils.getSubject(); // 得到Subject

		try {
			subject.login(token);// 进行身份验证
		} catch (Exception e) {
			request.getRequestDispatcher("error2.html").forward(request,response);
		}
		if (subject.isAuthenticated()) {
				// 进行权限验证
				if (subject.hasRole("users")) {
					request.getRequestDispatcher(
							"index.html?userName="+userName).forward(request, response);
				} else {
					request.getRequestDispatcher("error.html").forward(request,response);
				}
		} else {
			System.out.println("权限验证错误");
			return "error";
		}
		return null;

	}

	/**
	 * 管理员登录
	 * 
	 * */
	@RequestMapping(value = "admin/dologinadmin")
	public String doLoginadmin(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("userName" + userName);
		System.out.println("password" + password);
		
		// Shiro过滤

		/**
		 * 收集用户身份和证明
		 */
		token = new UsernamePasswordToken(userName, password);// 创建用户名/密码身份验证Token（即用户身份/凭证）
		token.setRememberMe(true);
		/**
		 * 提交身份和证明
		 */
		Subject subject = SecurityUtils.getSubject(); // 得到Subject

		try {
			subject.login(token);// 进行身份验证
		} catch (Exception e) {
			request.getRequestDispatcher("error2.html").forward(request,response);
		}
		if (subject.isAuthenticated()) {
			
				// 进行权限验证
				if (subject.hasRole("admin")) {
					System.out.println("dengluchenggong====================");
					request.getRequestDispatcher(
							"index.html").forward(request, response);
					
				} else {
					request.getRequestDispatcher("error.html").forward(request,response);
				}
		} else {
			System.out.println("权限验证错误");
			return "error";
		}
		return null;

	}

	
	@RequestMapping("error")
	public String error() {
		return "error";
	}
	
	@RequestMapping("error2")
	public String error2() {
		return "error2";
	}
	@RequestMapping("index_home")
	public ModelAndView index_home(){
		List<Users> userlist = service_user.get7Users();
		List<Notice> notices = service_noticce.getNotice();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("notices",notices);
		modelAndView.addObject("userlist",userlist);
		return modelAndView;
	}
	
	@RequestMapping(value="index")
	public ModelAndView initView(HttpServletRequest request){
		String user_name=request.getParameter("userName");
		Users auser = service_user.getAUser(user_name);
		
		ModelAndView model = new ModelAndView();
		model.setViewName("index");
		model.addObject("userinfo", auser);
		
		return model;
	}
	
	@RequestMapping(value="logout")
	public void logout(HttpServletRequest request,HttpServletResponse response) throws Exception{
		//request.getRequestDispatcher("login.html").forward(request,response);
	}

	
}
