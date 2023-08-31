package com.bongsa.biz.apply.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bongsa.biz.apply.ApplyService;
import com.bongsa.biz.apply.ApplyVO;
import com.bongsa.biz.user.UserVO;

@Service("applyservice")
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	private ApplyDAO applyDAO;

	public int insertapply(ApplyVO vo) {
		return applyDAO.insertapply(vo);
	}
	
	public int applyConfirm(ApplyVO vo) {
		return applyDAO.applyConfirm(vo);
	}

	public List<ApplyVO> getApplyNotdone(ApplyVO vo) {
		return applyDAO.getApplyNotdone(vo);
	}
	public List<ApplyVO> getApplyDone(ApplyVO vo) {
		return applyDAO.getApplyDone(vo);
	}
	public int myapplcancle(ApplyVO vo) {
		return applyDAO.myapplcancle(vo);
	}
	public List<ApplyVO> applyUnList(Map<String, String> vo) {
		return applyDAO.applyUnList(vo);
	}
	public List<ApplyVO> applyConfirmed(Map<String, String> vo) {
		return applyDAO.applyConfirmed(vo);
	}
	public List<ApplyVO> applyFinished(Map<String, String> vo) {
		return applyDAO.applyFinished(vo);
	}

	public ApplyVO getApplyById(int id) {
		return applyDAO.getApplyById(id);
	}
	
	public void updatereview(ApplyVO vo) {
		applyDAO.updatereview(vo);
	}

	/*
	 * public void setAgencyDAO(AgencyDAO AgencyDAO) { this.AgencyDAO = AgencyDAO; }
	 * 
	 * public void insertAgency(AgencyVO vo) { AgencyDAO.insertAgency(vo);
	 * 
	 * };
	 * 
	 * // �� ���� public void updateAgency(AgencyVO vo){ AgencyDAO.updateAgency(vo);
	 * };
	 * 
	 * // �� ���� public void deleteAgency(AgencyVO vo){ AgencyDAO.deleteAgency(vo);
	 * };
	 * 
	 * // �� �� ��ȸ public AgencyVO getAgency(AgencyVO vo){ return
	 * AgencyDAO.getAgency(vo); };
	 * 
	 * // �� ��� ��ȸ public List<AgencyVO> getAgencyList(AgencyVO vo){ return
	 * AgencyDAO.getAgencyList(vo); };
	 */

}
