package com.websocketchat.beans;

public class MsgInfo {

	private int id;
	private String chatroom;
	private String msgfrom;
	private String msgto;
	private String msgkind;
	private String msgcontent;
	private String msgtime;
	public MsgInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MsgInfo(String chatroom, String msgfrom, String msgto, String msgkind, String msgcontent, String msgtime) {
		super();
		this.chatroom = chatroom;
		this.msgfrom = msgfrom;
		this.msgto = msgto;
		this.msgkind = msgkind;
		this.msgcontent = msgcontent;
		this.msgtime = msgtime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getChatroom() {
		return chatroom;
	}
	public void setChatroom(String chatroom) {
		this.chatroom = chatroom;
	}
	public String getMsgfrom() {
		return msgfrom;
	}
	public void setMsgfrom(String msgfrom) {
		this.msgfrom = msgfrom;
	}
	public String getMsgto() {
		return msgto;
	}
	public void setMsgto(String msgto) {
		this.msgto = msgto;
	}
	public String getMsgkind() {
		return msgkind;
	}
	public void setMsgkind(String msgkind) {
		this.msgkind = msgkind;
	}
	public String getMsgcontent() {
		return msgcontent;
	}
	public void setMsgcontent(String msgcontent) {
		this.msgcontent = msgcontent;
	}
	public String getMsgtime() {
		return msgtime;
	}
	public void setMsgtime(String msgtime) {
		this.msgtime = msgtime;
	}
	
	
}
