package com.websocketchat.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.websocketchat.beans.MsgInfo;
import com.websocketchat.dao.MessageDao;

@Service
public class MessageService {

	@Resource 
	public MessageDao dao;
	/**
	 * 获取聊天记录
	 * 
	 * @return
	 */
	public PageInfo<MsgInfo> getHistoryMessage(String pageNum, String pageSize) {
		int num = 1;
		int size = 10;
		if (pageNum != null && !"".equals(pageNum)) {
			num = Integer.parseInt(pageNum);
		}
		if (pageSize != null && !"".equals(pageSize)) {
			size = Integer.parseInt(pageSize);
		}

		PageHelper.startPage(num, size);
		List<MsgInfo> tabOne = dao.getMessage();
		PageInfo<MsgInfo> page = new PageInfo<MsgInfo>(tabOne);

		return page;
		
	}
	
	public int addMessage(MsgInfo msginfo){
		return dao.addMessage(msginfo);
	}
	
	/**
	 * 清空聊天记录
	 * @return
	 */
	public int clearMessage(@Param("chatroom")String chatroom){
		return dao.clearMessage(chatroom);
	}
	
	
}
