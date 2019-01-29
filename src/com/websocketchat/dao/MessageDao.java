package com.websocketchat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.websocketchat.beans.MsgInfo;


@Repository
public interface MessageDao {

	/**
	 * 添加记录
	 * @return
	 */
	public int addMessage(MsgInfo msginfo);
	/**
	 * 查找记录
	 * @return
	 */
	public List<MsgInfo> getMessage();
	/**
	 * 清空聊天记录
	 * @return
	 */
	public int clearMessage(@Param("chatroom")String chatroom);
	
}
