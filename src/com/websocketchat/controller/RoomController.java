package com.websocketchat.controller;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.websocketchat.beans.RoomInfo;
import com.websocketchat.service.RoomService;

@Controller
public class RoomController {

	@Resource
	private RoomService service;
	@RequestMapping("index_chatroom")
	public String chatroom(@Param("roomname")String roomname,@Param("username")String username){
		return "index_chatroom";
	}
	/**
	 * 房间列表
	 *return
	 **/
	@RequestMapping(value="admin/admin_roomlist")
	public ModelAndView roomlist(){
		
		ModelAndView model = new ModelAndView();
		PageInfo<RoomInfo> page = service.getRooms(null,null);
		model.addObject("pagehelper", page);
		model.setViewName("admin/admin_roomlist");
		return model;
	}
	/**
	 * 创建房间
	 *return
	 **/
	@RequestMapping(value="creatRoom")
	public String createRoom(String chatname){
		service.createRoom(chatname);
		return "success";
	}
	/**
	 * 房间列表分页
	 *return
	 **/
	@RequestMapping(value="admin/admin_roomlistpage")
	public ModelAndView roomlistpage(@RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize){
		
		ModelAndView model = new ModelAndView();
		PageInfo<RoomInfo> page = service.getRooms(pageNum,pageSize);
		model.addObject("pagehelper", page);
		model.setViewName("admin/changeroomlist");
		return model;
	}
	/**
	 * 修改房间
	 *return
	 **/
	@RequestMapping(value="updateRoom")
	public String updateRoom(String chatname,String chatids){
		service.updateRoom(chatname, chatids);
		return "success";
	}
	/**
	 * 删除房间
	 *return
	 **/
	@RequestMapping(value="deleteRoom")
	public String deleteRoom(String chatname){
		service.deleteRoom(chatname);
		return "redirect:/admin/admin_roomlist";
	}
}
