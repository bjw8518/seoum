package com.bongsa.biz.review.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bongsa.biz.review.ReviewVO;



@Service("reviewservice")
public class ReviewServiceImpl {
	
	@Autowired
	ReviewDAO reviewdao;
	
	public void insertreview(ReviewVO vo) {
		reviewdao.insertreview(vo);

	}
	public void getReviewListBypid(ReviewVO vo) {
		// TODO Auto-generated method stub
		
	}
	
	
	public String getReviewContent(String r_apid) {
		return reviewdao.getReviewContent(r_apid);
	}
	
}
