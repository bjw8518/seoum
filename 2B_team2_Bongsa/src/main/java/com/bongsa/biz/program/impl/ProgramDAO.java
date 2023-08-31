package com.bongsa.biz.program.impl;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bongsa.biz.apply.ApplyVO;
import com.bongsa.biz.program.ProgramVO;
import com.bongsa.biz.user.UserVO;

@Repository
public class ProgramDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	/*
	 * 혹시 몰라서 안지움.. 쿼리문 참고.. // SQL 명령어들 // private final String PROGRAM_INSERT =
	 * "insert into PROGRAM(seq, title, // writer, // content) values((select
	 * nvl(max(seq), 0)+1 from PROGRAM),?,?,?)"; private final String PROGRAM_INSERT
	 * =
	 * "insert into programtbl(p_title, p_startdate,p_enddate,p_open,p_close,p_demand,p_target,p_dayweek,p_onoff,p_content,p_starttime,p_endtime,p_createDate) values(?,?,?,?,?,?,?,?,?,?,?,?,?)"
	 * ; // private final String PROGRAM_UPDATE =
	 * "update PROGRAM set title=?, content=? where seq=?"; // private final String
	 * PROGRAM_DELETE = "delete PROGRAM where seq=?"; private final String
	 * PROGRAM_GET_LIST = "select * from programtbl where mem_name=?"; private final
	 * String PROGRAM_LIST = "select * from PROGRAM order by seq desc"; private
	 * final String PROGRAM_LIST_FOR_AGENCY =
	 * "select * from programtbl where p_agencyid = ?"; private final String
	 * PROGRAM_LIST_T =
	 * "select * from PROGRAM where title like '%'||?||'%' order by seq desc";
	 * private final String PROGRAM_LIST_C =
	 * "select * from PROGRAM where content like '%'||?||'%' order by seq desc";
	 */

	public List<ProgramVO> getliston(UserVO vo) { // 진행중 공고 게시판
		return mybatis.selectList("ProgramDAO.getPgListOn", vo);

	}
	public List<ProgramVO> getlistend(UserVO vo) { // 진행중 공고 게시판
		return mybatis.selectList("ProgramDAO.getPgListEnd", vo);
		
	}
	public List<ProgramVO> getlist(UserVO vo) {
		return mybatis.selectList("ProgramDAO.getProgramList", vo);
		
	}

	public void insertProgram(ProgramVO vo) {

		mybatis.insert("ProgramDAO.insertProgram", vo);

	}

	public List<ProgramVO> findAll() {
		return mybatis.selectList("ProgramDAO.findAll");

	}

	public ProgramVO getApplyForm(ProgramVO vo) {
		return mybatis.selectOne("ProgramDAO.getapplyform", vo);
	}

//	 오버로딩 이라서 두개 
	public ProgramVO getProgramOne(ProgramVO vo) {

		return mybatis.selectOne("ProgramDAO.getProgramOne", vo);

	}

	/*
	 * public ProgramVO getProgramOne(String vo) { return
	 * mybatis.selectOne("ProgramDAO.getProgramOne", vo); }
	 */

	public int updateProgram(ProgramVO vo) {
		return mybatis.update("ProgramDAO.updateProgram", vo);
	}

	public void deleteProgram(ProgramVO vo) {
//		jdbcTemplate.update("ProgramDAO.deleteProgram", vo);
	}

	public ProgramVO getProgramById(int id) {
		return mybatis.selectOne("ProgramDAO.getProgramOne", id);
	}
	/*
	 * public ProgramVO getProgram(ProgramVO vo) { }
	 */

}