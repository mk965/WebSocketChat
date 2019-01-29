package com.websocketchat.beans;

public class RoomInfo {

	private int chat_id;
	private String chatname;
	private String chatmsg;
	private String room_time;
	public RoomInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RoomInfo(String chatname, String chatmsg) {
		super();
		this.chatname = chatname;
		this.chatmsg = chatmsg;
	}
	
	
	
	public String getRoom_time() {
		return room_time;
	}
	public void setRoom_time(String room_time) {
		this.room_time = room_time;
	}
	public int getChat_id() {
		return chat_id;
	}
	public void setChat_id(int chat_id) {
		this.chat_id = chat_id;
	}
	public String getChatname() {
		return chatname;
	}
	public void setChatname(String chatname) {
		this.chatname = chatname;
	}
	public String getChatmsg() {
		return chatmsg;
	}
	public void setChatmsg(String chatmsg) {
		this.chatmsg = chatmsg;
	}
	
	
}
