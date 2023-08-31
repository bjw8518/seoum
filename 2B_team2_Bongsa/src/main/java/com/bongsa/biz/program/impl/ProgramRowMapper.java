package com.bongsa.biz.program.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

import org.springframework.jdbc.core.RowMapper;

import com.bongsa.biz.program.ProgramVO;

public class ProgramRowMapper implements RowMapper<ProgramVO> {

	public ProgramVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProgramVO Program = new ProgramVO();

		Program.setP_id((long)rs.getObject("p_id"));
		Program.setP_agencyid(rs.getString("p_angencyid"));
		Program.setP_title(rs.getString("p_title"));
		Program.setP_startdate(rs.getString("p_startdate"));
		Program.setP_enddate(rs.getString("p_enddate"));
		Program.setP_open(rs.getString("p_open"));
		Program.setP_close(rs.getString("p_close"));
		Program.setP_demand(rs.getInt("p_demand"));
		Program.setP_target(rs.getString("p_target"));
		Program.setP_dayweek(rs.getString("p_dayweek"));
		Program.setP_onoff(rs.getString("p_onoff"));
		Program.setP_content(rs.getString("p_content"));
		Program.setP_starttime(rs.getString("p_starttime"));
		Program.setP_endtime(rs.getString("p_endtime"));
		Program.setP_createDate((LocalDateTime)rs.getObject("p_createDate"));

		return Program;
	}
}