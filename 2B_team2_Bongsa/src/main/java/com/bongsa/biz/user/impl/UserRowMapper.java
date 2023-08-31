package com.bongsa.biz.user.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.bongsa.biz.user.UserVO;

public class UserRowMapper implements RowMapper<UserVO> {

	public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserVO User = new UserVO();

		User.setMem_select(rs.getInt("mem_select"));
		User.setMem_id(rs.getString("mem_id"));
		User.setMem_name(rs.getString("mem_name"));
		User.setMem_pw(rs.getString("mem_pw"));
		User.setMem_pwck(rs.getString("mem_pwck"));
		User.setMem_post(rs.getString("mem_post"));
		User.setMem_addrs(rs.getString("mem_addrs"));
		User.setMem_dtaddrs(rs.getString("mem_dtaddrs"));
		User.setMem_email(rs.getString("mem_email"));
		User.setMem_phone(rs.getString("mem_phone"));
		User.setMem_role(rs.getString("mem_role"));

		return User;
	}
}