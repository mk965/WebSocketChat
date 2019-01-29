package com.websocketchat.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.websocketchat.beans.Notice;
import com.websocketchat.beans.Users;
import com.websocketchat.service.NoticeService;
import com.websocketchat.service.UserService;

@Controller
public class ManageController {

	@Resource
	private UserService userService;
	@Resource
	private NoticeService noticeService;
	@RequestMapping(value="admin/admin_adgk")
	public String adgk(){
		return "admin/admin_adgk";
	}
	/**
	 * 公告列表
	 *return
	 **/
	@RequestMapping(value="admin/admin_gonggaolist")
	public ModelAndView gonggaolist(){
		
		ModelAndView model = new ModelAndView();
		PageInfo<Notice> page = noticeService.getNotices(null,null);
		model.addObject("pagehelper", page);
		model.setViewName("admin/admin_gonggaolist");
		return model;
	}
	/**
	 * 公告列表分页
	 *return
	 **/
	@RequestMapping(value="admin/admin_gonggaolistpage")
	public ModelAndView gonggaolistpage(@RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize){
		
		ModelAndView model = new ModelAndView();
		PageInfo<Notice> page = noticeService.getNotices(pageNum,pageSize);
		model.addObject("pagehelper", page);
		model.setViewName("admin/changegonggao");
		return model;
	}
	@RequestMapping(value="admin/admin_home")
	public String home(){
		return "admin/admin_home";
	}
	@RequestMapping(value="admin/admin_roomgk")
	public String roomgk(){
		return "admin/admin_roomgk";
	}
	@RequestMapping(value="admin/admin_usergk")
	public String usergk(){
		return "admin/admin_usergk";
	}
	/**
	 * 用户列表
	 * 
	 */
	@RequestMapping(value="admin/admin_userlist")
	public ModelAndView userlist(){
		ModelAndView model = new ModelAndView();
		PageInfo<Users> page = userService.getUsers(null,null);
		model.addObject("pagehelper", page);
		model.setViewName("admin/admin_userlist");
		return model;
	}
	/**
	 * 用户列表分页
	 * 
	 */
	@RequestMapping(value="admin/admin_userlistpage")
	public ModelAndView userlistPage(@RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize,HttpServletRequest request){
		ModelAndView model = new ModelAndView();
		PageInfo<Users> page = userService.getUsers(pageNum, pageSize);
		System.out.println("pageNum:"+pageNum+"pageSize"+pageSize);
		System.out.println(userService.getUsers(pageNum, pageSize));
		model.addObject("pagehelper", page);
		model.setViewName("admin/changeuserlist");
		return model;
	}
	/**
	 * 删除公告
	 * 
	 */
	@RequestMapping(value="admin/deleteNotice")
	public String deleteNotice(String ids){
	 noticeService.deleteNotice(ids);
	 return "redirect:/admin/admin_gonggaolist";
	}
	/**
	 * 修改公告
	 * 
	 */
	@RequestMapping(value="admin/updateNotice")
	public int updateNotice(String title,String content){
		return noticeService.updateNotice(title, content);
	}
	/**
	 * 添加公告
	 * 
	 */
	@RequestMapping(value="admin/addnotice")
	public int addNotice(String title,String content,String notice_author){
		return noticeService.addNotice(title, content, notice_author);
	}
}
