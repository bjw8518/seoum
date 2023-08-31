package com.bongsa.biz.program.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bongsa.biz.apply.ApplyVO;
import com.bongsa.biz.program.ProgramService;
import com.bongsa.biz.program.ProgramVO;
import com.bongsa.biz.user.UserVO;

@Service("programservice")
public class ProgramServiceImpl implements ProgramService {
	@Autowired
	private ProgramDAO programDAO;

	public void setProgramDAO(ProgramDAO programDAO) {
		this.programDAO = programDAO;
	}

	public List<ProgramVO> getliston(UserVO vo) {
		return programDAO.getliston(vo);
	};
	public List<ProgramVO> getlistend(UserVO vo) {
		return programDAO.getlistend(vo);
	};

	public void insertProgram(ProgramVO vo) {
		programDAO.insertProgram(vo);

	};

	public List<ProgramVO> getPrograms() {
		return programDAO.findAll();

	}

	public ProgramVO getProgramOne(ProgramVO vo) {
		return programDAO.getProgramOne(vo);
	}
	public ProgramVO getProgramById(int id) {
		return programDAO.getProgramById(id);
	}

	/*
	 * public ProgramVO getProgramOne(String vo) { return
	 * programDAO.getProgramOne(vo); }
	 */

	public ProgramVO getApplyForm(ProgramVO vo) {
		return programDAO.getApplyForm(vo);
	}

	// �� ����
	public int updateProgram(ProgramVO vo) {
		
		return programDAO.updateProgram(vo);
	};

	public void deleteProgram(ProgramVO vo) {
//		programDAO.deleteProgram(vo);
	};

	// �� �� ��ȸ

	// �� ��� ��ȸ
//	public List<ProgramVO> getProgramList(ProgramVO vo){
//		return programDAO.getProgramList(vo);
//	};

}
