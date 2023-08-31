package com.bongsa.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bongsa.biz.user.UserService;
import com.bongsa.biz.user.UserVO;



@Service("userservice")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	public UserVO getUserinfo(UserVO vo) {
		return userDAO.getUserinfo(vo);
	}
	public UserVO UserLogin(UserVO vo) {
		return userDAO.loginUser(vo);
	}
	public int idcheck(String userid) {
		return userDAO.idcheck(userid);
	}
	public int joinUser(UserVO vo) {
		return userDAO.joinUser(vo);
	}

	public UserVO findpw(UserVO vo){
		return userDAO.findpw(vo);
	}
	public UserVO findid(UserVO vo){
		return userDAO.findid(vo);
		
	}
	public int updateUser(UserVO vo){
		return userDAO.updateUser(vo);
		
	}
}
