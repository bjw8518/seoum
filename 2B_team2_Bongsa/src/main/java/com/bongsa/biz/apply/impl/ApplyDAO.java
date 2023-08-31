package com.bongsa.biz.apply.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bongsa.biz.apply.ApplyVO;
import com.bongsa.biz.user.UserVO;

@Repository
public class ApplyDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public int insertapply(ApplyVO vo) {
		return mybatis.insert("ApplyDAO.insertapply", vo);
	}
	public int applyConfirm(ApplyVO vo) {
		return mybatis.update("ApplyDAO.applyconfirm", vo);
	}

	public List<ApplyVO> getApplyNotdone(ApplyVO vo) {
		return mybatis.selectList("ApplyDAO.getuserlistyet", vo);
	}
	public List<ApplyVO> getApplyDone(ApplyVO vo) {
		return mybatis.selectList("ApplyDAO.getuserlistend", vo);
	}
	public int myapplcancle(ApplyVO vo) {
		return mybatis.update("ApplyDAO.myapplcancle", vo);
	}
	
	public List<ApplyVO> applyUnList(Map<String, String> vo) {
		return mybatis.selectList("ApplyDAO.applyUnList", vo);
	}
	public List<ApplyVO> applyConfirmed(Map<String, String> vo) {
		return mybatis.selectList("ApplyDAO.applyConfirmed", vo);
	}
	public List<ApplyVO> applyFinished(Map<String, String> vo) {
		return mybatis.selectList("ApplyDAO.applyFinished", vo);
	}

	public ApplyVO getApplyById(int id) {
		return mybatis.selectOne("ApplyDAO.getApplyById", id);
	}
	public void updatereview(ApplyVO vo) {
		mybatis.update("ApplyDAO.applyreview", vo);
	}
}