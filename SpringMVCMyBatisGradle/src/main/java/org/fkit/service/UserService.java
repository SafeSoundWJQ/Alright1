package org.fkit.service;

import org.fkit.domain.User;

/**
 * User服务层接口
 * */
public interface UserService {
	
	/**
	 * 判断用户登录
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	//用户登录
	User login(String loginname,String password);
	//用户注册
	void register(User user);
	//修改密码
	void updatePassword(String password, int id);
	//找回密码
	User findPassword(String loginname,String email);
}
