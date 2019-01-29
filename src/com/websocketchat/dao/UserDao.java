package com.websocketchat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.websocketchat.beans.Users;


@Repository
public interface UserDao {
	/**
	 * 添加用户
	 * @param user_name
	 * @param password
	 * @param usermail
	 * @return
	 */
	public int addUser(@Param("user_name")String user_name,@Param("password")String password,@Param("user_mail")String user_mail);
	/**
	 * 删除用户
	 * @param id
	 * @return
	 */
	public int deleteUser(@Param("id")int id);
	/**
	 * 更新用户
	 * @param user_name
	 * @param password
	 * @param usermail
	 * @return
	 */
	public int updateUser(@Param("user_name")String user_name,@Param("user_face")String user_face,@Param("user_qianming")String user_qianming,@Param("user_mail")String user_mail);
	/**
	 * 更新权限
	 * @return
	 */
	public int updataUserPermission(@Param("permission")String permission,@Param("user_name")String user_name);
	/**
	 * 初始化用户管理页面
	 * @return
	 */
	 Users getUser(@Param("user_name")String user_name);
	/**
	 * 获取所有用户
	 * @return
	 */
	public List<Users> getUsers();
	/**
	 * 更新用户权限
	 * @return
	 */
	public int updatePermission(@Param("role_name")String role_name,@Param("permission")String permission,@Param("user_mail")String user_mail);
	 /** 更新用户权限
	 * @return
	 */
	public int addUserPermission(@Param("username")String username,@Param("permission")String permission);

}
