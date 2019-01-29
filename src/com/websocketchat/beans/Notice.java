package com.websocketchat.beans;


public class Notice {

	private int notice_id;
	private String title;
	private String content;
	private String notice_author;
	private String notice_time;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(String title, String content, String notice_author, String notice_time) {
		super();
		this.title = title;
		this.content = content;
		this.notice_author = notice_author;
		this.notice_time = notice_time;
	}
	public int getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getNotice_author() {
		return notice_author;
	}
	public void setNotice_author(String notice_author) {
		this.notice_author = notice_author;
	}
	public String getNotice_time() {
		return notice_time;
	}
	public void setNotice_time(String notice_time) {
		this.notice_time = notice_time;
	}
	
	
}
