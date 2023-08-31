package com.bongsa.view.program;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bongsa.biz.apply.ApplyVO;
import com.bongsa.biz.apply.impl.ApplyServiceImpl;
import com.bongsa.biz.review.ReviewVO;
import com.bongsa.biz.review.impl.ReviewServiceImpl;


@Controller
public class ReviewController {

    @Autowired
    @Qualifier("reviewservice")
    ReviewServiceImpl reviewservice;
    
	@Autowired
	@Qualifier("applyservice")
	ApplyServiceImpl applyservice;


    
    
    @RequestMapping("/insertreview.do")
    public String insertreview(ReviewVO vo, ApplyVO apvo) {
    	apvo.setAp_id(Integer.parseInt(vo.getR_apid()));
    	reviewservice.insertreview(vo);
    	applyservice.updatereview(apvo);
        return "my_complete.do?ap_id="+apvo.getAp_id();
    }
    
    
    @RequestMapping("/getReview.do")
    @ResponseBody
    public Map<Object, Object>insertreview(@RequestBody String vo) {
    	Map<Object, Object> map = new HashMap<Object, Object>();
    	
    	
    	map.put("content", reviewservice.getReviewContent(vo));
    	return map;
    }


}
