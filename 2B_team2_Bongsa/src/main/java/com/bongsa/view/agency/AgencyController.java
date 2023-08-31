package com.bongsa.view.agency;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bongsa.biz.apply.ApplyVO;
import com.bongsa.biz.apply.impl.ApplyServiceImpl;
import com.bongsa.biz.program.ProgramVO;
import com.bongsa.biz.program.impl.ProgramServiceImpl;
import com.bongsa.biz.user.UserVO;
import com.bongsa.biz.user.impl.UserServiceImpl;

/**
 * 봉사기관페이지~!~!
 */
@Controller
@SessionAttributes("program")
public class AgencyController {

	@Autowired
	@Qualifier("programservice")
	ProgramServiceImpl programservice;

	@Autowired
	@Qualifier("userservice")
	UserServiceImpl userservice;

	@Autowired
	@Qualifier("applyservice")
	ApplyServiceImpl applyservice;

	/* 공고관리 스타트 */
	@RequestMapping(value = "program_on.do") // 진행중(노출중)인 리스트
	public String program_onView(UserVO user, Model model, HttpSession session) {

		model.addAttribute("programlist", programservice.getliston((UserVO) session.getAttribute("user")));

		return "agencypage/program_on.jsp";
	}

	@RequestMapping("program_end.do") // 완료된 봉사 건 리스트
	public String program_endView(UserVO user, Model model, HttpSession session) {

		model.addAttribute("programlist", programservice.getlistend((UserVO) session.getAttribute("user")));

		return "agencypage/program_end.jsp";
	}

	@GetMapping("/program_reg.do") // 봉사공고 신규등록
	public String program_regView(@ModelAttribute("user") UserVO user, Model model) {
		model.addAttribute("user", userservice.getUserinfo(user));
		return "agencypage/program_reg.jsp";
	}

	@PostMapping("/program_reg.do") // 봉사공고 신규등록
	public String program_regView(ProgramVO vo) {
		programservice.insertProgram(vo);
		return "program_on.do";
	}

	/* 신청관리 ~ */
	@RequestMapping(value = "applicant_un.do") // 신청(미승인) 상태 신청 리스트
	public String applicant_unView(HttpSession session, Model model) {
		Map<String, String> idval = new HashMap<String, String>();
		UserVO uvo = (UserVO) session.getAttribute("user");
		idval.put("ap_aid", uvo.getMem_id());
		List<ApplyVO> ap = applyservice.applyUnList(idval);
		model.addAttribute("applylist", ap);
		return "agencypage/applicant_un.jsp";

	}

	@RequestMapping(value = "applicant_confirm.do", method = RequestMethod.POST) // 신청(미승인) > 승인으로 변겅
	public String apply_Confirm(ApplyVO apply) {
		if (apply.getAp_rejec().equals(""))
			apply.setAp_state("확정(승인)");
		else
			apply.setAp_state(apply.getAp_state() + "(" + apply.getAp_rejec() + ")");

		applyservice.applyConfirm(apply);
		return "applicant_un.do";

	}

	@RequestMapping("/applicant_agree.do") // 승인 상태 신청 리스트
	public String applicant_agreeView(UserVO agency, Model model) {
		Map<String, String> idval = new HashMap<String, String>();
		idval.put("ap_aid", agency.getMem_id());
		List<ApplyVO> ap = applyservice.applyConfirmed(idval);
		model.addAttribute("applylist", ap);
		return "agencypage/applicant_agree.jsp";
	}

	@RequestMapping(value = "applicant_end.do", method = RequestMethod.POST) // 승인 > 완료로 변겅
	public String apply_complete(ApplyVO apply) {

		applyservice.applyConfirm(apply); // 완료처리
		return "applicant_agree.do";

	}

	@RequestMapping("/applicant_complete.do") // 승인 + 활동 완료 상태 신청 리스트
	public String applicant_completeView(UserVO agency, Model model) {
		Map<String, String> idval = new HashMap<String, String>();
		idval.put("ap_aid", agency.getMem_id());
		List<ApplyVO> ap = applyservice.applyFinished(idval);
		model.addAttribute("applylist", ap);
		return "agencypage/applicant_complete.jsp";
	}
	/* 신청관리 끝~ */

	/* 봉사공고 수정 스타트~ */

	@ModelAttribute("onOffList")
	public Map<String, String> roleOptionList2() {
		Map<String, String> onOffList = new HashMap<String, String>();
		onOffList.put("오프라인", "오프라인");
		onOffList.put("온라인", "온라인 ");
		return onOffList;
	}

	@GetMapping("/program_modify.do") // 봉사정보를 수정하는 페이지..
	public String program_modifyView(ProgramVO vo, Model model) {

		model.addAttribute("pg", programservice.getProgramOne(vo));
		return "agencypage/program_modify.jsp";
	}

	@PostMapping("/program_modify.do") // 봉사정보를 수정 실행..
	public String program_modifyDo(ProgramVO vo) {

		programservice.updateProgram(vo);
		return "program_on.do";
	}

}
