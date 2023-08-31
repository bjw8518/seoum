package com.bongsa.view.apply;

import com.bongsa.biz.user.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.bongsa.biz.apply.ApplyVO;
import com.bongsa.biz.apply.impl.ApplyServiceImpl;
import com.bongsa.biz.program.ProgramVO;
import com.bongsa.biz.program.impl.ProgramServiceImpl;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@Controller
//@SessionAttributes("apply")
public class ApplyController {

	@Autowired
	@Qualifier("applyservice")
	ApplyServiceImpl applyservice;
	@Autowired
	@Qualifier("programservice")
	ProgramServiceImpl programservice;

	@GetMapping("/pg_apply.do")
	public String applyView(ProgramVO vo, Model model, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return  "redirect:/login.do";
		}

		model.addAttribute("apform", programservice.getProgramOne(vo));
		return "apply/pg_apply.jsp";
	}

	@GetMapping("/apply_check.do")
	public String apply_check(Model model, HttpSession session,@RequestParam("id") int id) {
		if (session.getAttribute("user") == null) {
			return  "redirect:/login.do";
		}
		ApplyVO vo= applyservice.getApplyById(id);
		model.addAttribute("apply",vo);
		return "apply/applycheck.jsp";
	}

	@PostMapping(value = "/apply.do")
	public String applyInsert(@ModelAttribute("apply") ApplyVO vo, Model model, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return  "redirect:/login.do";
		}
		UserVO user = (UserVO) session.getAttribute("user");
		vo.setAp_mid(user.getMem_id());
		vo.setAp_state("신청(미승인)");
		ProgramVO program = programservice.getProgramById(vo.getAp_pid());
		model.addAttribute("applist",applyservice.insertapply(vo) );
		System.out.println("vo = " + vo);
		System.out.println("program = " + program);

			return "index.jsp";
	}




}