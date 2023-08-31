package com.bongsa.biz.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bongsa.biz.user.UserVO;

@Repository("UserDao")
public class UserDAO {

	@Autowired
	private SqlSessionTemplate mybatis;


	public UserVO loginUser(UserVO vo) { // 아디비번확인
		return (UserVO) mybatis.selectOne("UserDAO.getauser", vo);
	}
	public UserVO getUserinfo(UserVO vo) { // 회원정보 가져오기
		return (UserVO) mybatis.selectOne("UserDAO.getuserinfo", vo);
	}

	public int joinUser(UserVO vo) { // 가입
		return mybatis.insert("UserDAO.userJoin", vo);
	}

	public int idcheck(String u_id) {
		if (mybatis.selectOne("UserDAO.idcheck", u_id) != null)
			return 1;
		else
			return 0;
	}
	public UserVO findpw(UserVO vo) {
		return mybatis.selectOne("UserDAO.findpw", vo);
	}
	public UserVO findid(UserVO vo) {
		return mybatis.selectOne("UserDAO.findid", vo);
	}
	public int updateUser(UserVO vo){
		return mybatis.update("UserDAO.updateuser",vo);
		
	}
	public /* List<UserVO> */ void getUserList(UserVO vo) {
		/*
		 * Object[] args = { vo.getSearchKeyword() }; if
		 * (vo.getSearchCondition().equals("TITLE")) { return
		 * jdbcTemplate.query(User_LIST_T, args, new UserRowMapper()); } else if
		 * (vo.getSearchCondition().equals("CONTENT")) { return
		 * jdbcTemplate.query(User_LIST_C, args, new UserRowMapper()); }
		 */
	}
}