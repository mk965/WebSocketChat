package com.websocketchat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.websocketchat.beans.Notice;

@Repository
public interface NoticeDao {
	/**
	 * 添加公告
	 * @return 
	 */
	public int createNotice(@Param("title")String title,@Param("content")String content,@Param("notice_author")String notice_author);
	/**
	 * 删除公告
	 * @return List
	 */
	public int deleteNotice(@Param("id")int id);
	/**
	 * 修改用户
	 * @return List
	 */
	public int updateNotice(Notice notice);
	/**
	 * 查询用户
	 * @return List
	 */
	public List<Notice> getNotices();
}
