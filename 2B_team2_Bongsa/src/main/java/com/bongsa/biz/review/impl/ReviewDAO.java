package com.bongsa.biz.review.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bongsa.biz.review.ReviewVO;

@Repository
public class ReviewDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertreview(ReviewVO vo) {
		mybatis.insert("ReviewDAO.insertreview", vo);
	}
	public void getReviewListBypid() {
		// TODO Auto-generated method stub
		
	}
	
	public String getReviewContent(String r_apid) {
		return mybatis.selectOne("ReviewDAO.getReviewContent", r_apid);
	}
}