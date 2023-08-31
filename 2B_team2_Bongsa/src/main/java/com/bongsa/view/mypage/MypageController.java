package com.bongsa.view.mypage;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bongsa.biz.apply.ApplyVO;
import com.bongsa.biz.apply.impl.ApplyServiceImpl;
import com.bongsa.biz.user.UserVO;
import com.bongsa.biz.user.impl.UserServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("user")
public class MypageController {

	@Autowired
	@Qualifier("userservice")
	UserServiceImpl userservice;

	@Autowired
	@Qualifier("applyservice")
	ApplyServiceImpl applyservice;

	
	
	@RequestMapping("/mypage.do")
	public String mypageView(@ModelAttribute("user") UserVO user, HttpSession session, Model model) {

		model.addAttribute("user", session.getAttribute("user"));
		if (user.getMem_select() == 1)
			return "mypage.jsp";
		else
			return "agencypage.do";

	}
	@RequestMapping(value = "/my_applicant.do")
	public String myapplView(ApplyVO apply, Model model) {
		model.addAttribute("applylist", applyservice.getApplyNotdone(apply));
		return "mypage/my_applicant.jsp";
	}
	
	
	@RequestMapping(value = "/applicant_cancle.do")
	public String myapplcancle(ApplyVO apply) {
		applyservice.myapplcancle(apply);
		return "my_applicant.do";
	}

	
	@RequestMapping(value = "/my_complete.do")
	public String mycompleteView(ApplyVO apply, Model model) {

		model.addAttribute("applylist", applyservice.getApplyDone(apply));
		return "mypage/my_complete.jsp";
		
		
	}

	// 회원정보 수정

	@ModelAttribute("roleOptionList")
	public Map<String, String> roleOptionList1() {
		Map<String, String> roleOptionList = new HashMap<String, String>();

		roleOptionList.put("성인", "성인");
		roleOptionList.put("청소년", "청소년");
		roleOptionList.put("기타", "기타");
		return roleOptionList;
	}

	@RequestMapping(value = "/my_modify.do", method = RequestMethod.GET)
	public String UserModify(@ModelAttribute("user") UserVO user, Model model) {

		model.addAttribute("user", userservice.getUserinfo(user));
		return "mypage/my_modify.jsp";
	}

	@RequestMapping(value = "/my_modify.do", method = RequestMethod.POST)
	public String userinfoModify(@ModelAttribute("user") UserVO user, Model model) {

		userservice.updateUser(user);
		return "mypage/my_modify.jsp";
	}

	// 마이페이지 기관회원

// 입장
	@RequestMapping(value = "agencypage.do", method = RequestMethod.GET) // 페이지 진입 메인같은..
	public String agencypageView(@ModelAttribute("user") UserVO agency, Model model) {
		model.addAttribute("user", agency);
		return "agencypage/agency_admin.jsp";
	}

//	기관정보 수정 
	@ModelAttribute("roleOptionList2")
	public Map<String, String> roleOptionList2() {
		Map<String, String> roleOptionList = new HashMap<String, String>();

		roleOptionList.put("공공기관", "공공기관");
		roleOptionList.put("공공시설", "공공시설");
		roleOptionList.put("민간기관", "민간기관");
		roleOptionList.put("민간시설", "민간시설");
		roleOptionList.put("행정기관", "행정기관");
		return roleOptionList;
	}

	@RequestMapping(value = "/agency_modify.do", method = RequestMethod.GET)
	public String agencyModify(@ModelAttribute("user") UserVO user, Model model) {
		model.addAttribute("user", userservice.getUserinfo(user));
		return "agencypage/agency_modify.jsp";
	}

	@RequestMapping(value = "/agency_modify.do", method = RequestMethod.POST)
	public String agencyModify(@ModelAttribute("user") UserVO user) {
		userservice.updateUser(user);
		return "agencypage/agency_modify.jsp";
	}

}
