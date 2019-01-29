package com.websocketchat.beans;


public class Users {

	private int id;
	private int user_msgnum;
	private String user_name;
	private String password;
	private String user_mail;
	private String flag;
	private String user_face;
	private String user_qianming;
	private String permission;
	private String re_time;
	
	
	
	
	public String getRe_time() {
		return re_time;
	}




	public void setRe_time(String re_time) {
		this.re_time = re_time;
	}




	public String getPermission() {
		return permission;
	}




	public void setPermission(String permission) {
		this.permission = permission;
	}




	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}




	public Users(int user_msgnum, String user_name, String password, String user_mail, String flag, String user_face,
			String user_qianming) {
		super();
		this.user_msgnum = user_msgnum;
		this.user_name = user_name;
		this.password = password;
		this.user_mail = user_mail;
		this.flag = flag;
		this.user_face = user_face;
		this.user_qianming = user_qianming;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUser_msgnum() {
		return user_msgnum;
	}

	public void setUser_msgnum(int user_msgnum) {
		this.user_msgnum = user_msgnum;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUser_mail() {
		return user_mail;
	}

	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getUser_face() {
		return user_face;
	}

	public void setUser_face(String user_face) {
		this.user_face = user_face;
	}

	public String getUser_qianming() {
		return user_qianming;
	}

	public void setUser_qianming(String user_qianming) {
		this.user_qianming = user_qianming;
	}

}
