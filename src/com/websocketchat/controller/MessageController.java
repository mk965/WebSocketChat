package com.websocketchat.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.websocketchat.beans.MsgInfo;
import com.websocketchat.service.MessageService;

@Controller
public class MessageController {

	@Resource
	private MessageService service;
	/**
	 * 聊天记录初始化
	 * 
	 * @return 所需数据
	 * @throws UnknownHostException 
	 */
	@RequestMapping(value="historyMsg")
	public ModelAndView getHistoryMsg(HttpServletRequest request){
		ModelAndView model = new ModelAndView();
		
		PageInfo<MsgInfo> page = service.getHistoryMessage(null,null);
		model.addObject("pagehelper", page);
		model.setViewName("historyMsg");
		return model;
	}
	/**
	 * 聊天记录分页
	 * 
	 * @return 所需数据
	 * @throws UnknownHostException 
	 */
	@RequestMapping(value="historyMsgPage")
	public ModelAndView getHistoryMsgPage(@RequestParam("pageNum") String pageNum,
			@RequestParam("pageSize") String pageSize,HttpServletRequest request){
		ModelAndView model = new ModelAndView();
		
		PageInfo<MsgInfo> page = service.getHistoryMessage(null,null);
		model.addObject("pagehelper", page);
		model.setViewName("historyMsgPage");
		return model;
	}
	
	
	@RequestMapping(value="addMessage")
	public void addMessage(){
		
	}
	@RequestMapping(value="deleteMessage")
	public void deleteMessage(){
		
	}
	
	@RequestMapping(value="chatroom")
	public String initchatroom(){
		return "chatroom";
	}
	@RequestMapping(value="admin/index")
	public String adminView(){
		return "admin/index";
	}
}
