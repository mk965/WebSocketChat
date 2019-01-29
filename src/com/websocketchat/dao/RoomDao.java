package com.websocketchat.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.websocketchat.beans.RoomInfo;

@Repository
public interface RoomDao {
	/**
	 * 创建房间
	 * @param 
	 * @return
	 */
	public int creatRoom(String chatname);
	/**
	 * 删除房间
	 * @param 
	 * @return
	 */
	public int deleteRoom(String chatname);
	/**
	 * 修改房间
	 * @param 
	 * @return
	 */
	public int updateRoom(RoomInfo roomInfo);
	/**
	 * 查找房间
	 * @param 
	 * @return
	 */
	public List<RoomInfo> getRooms();
	
}
