package com.websocketchat.beans;

public class OlineUser {

	private int user_id;
	private String user_name;
	private String chat_room;
	private String login_time;
	public OlineUser() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OlineUser(String user_name, String chat_room, String login_time) {
		super();
		this.user_name = user_name;
		this.chat_room = chat_room;
		this.login_time = login_time;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getChat_room() {
		return chat_room;
	}
	public void setChat_room(String chat_room) {
		this.chat_room = chat_room;
	}
	public String getLogin_time() {
		return login_time;
	}
	public void setLogin_time(String login_time) {
		this.login_time = login_time;
	}
	
	
}
