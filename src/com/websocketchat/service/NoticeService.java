package com.websocketchat.service;

import java.util.List;

import javax.annotation.Resource;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.websocketchat.beans.Notice;
import com.websocketchat.dao.NoticeDao;

@Service
public class NoticeService {
	
	@Resource 
	private NoticeDao dao;
	
	public List<Notice> getNotice(){
		return dao.getNotices();
	}
	/**
	 * 获取所有公告
	 * @return
	 */
	 public PageInfo<Notice> getNotices(String pageNum,String pageSize){
		 	int num = 1;
			int size = 5;
			if (pageNum != null && !"".equals(pageNum)) {
				num = Integer.parseInt(pageNum);
			}
			if (pageSize != null && !"".equals(pageSize)) {
				size = Integer.parseInt(pageSize);
			}

			PageHelper.startPage(num, size);
			List<Notice> tabOne = dao.getNotices();
			PageInfo<Notice> page = new PageInfo<Notice>(tabOne);

			return page;
	}
	 /**
		 * 删除公告
		 * @return
		 */
	 public int deleteNotice(String ids){
		 int id=Integer.parseInt(ids);
		 return dao.deleteNotice(Integer.parseInt(ids));
	 }
	 /**
		 * 修改公告
		 * @return
		 */
	 public int updateNotice(String title,String content){
		 Notice notice = new Notice();
		 notice.setTitle(title);
		 notice.setContent(content);
		 return dao.updateNotice(notice);
	 }
	 /**
		 * 添加公告
		 * @return
		 */
	 public int addNotice(String title,String content,String notice_author){
		 return dao.createNotice(title, content, notice_author);
	 }
	 
}
