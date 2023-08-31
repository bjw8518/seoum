package com.bongsa.view.program;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bongsa.biz.program.ProgramVO;
import com.bongsa.biz.program.impl.ProgramServiceImpl;
import com.bongsa.biz.user.UserVO;


@Controller
public class ProgramController {

    @Autowired
    ProgramServiceImpl programservice;


    @GetMapping("/service_ask.do")
    public String serviceAsk(HttpSession session, Model model) {
        if (session.getAttribute("user") == null) return  "redirect:/login.do";
        UserVO loginUser=null;
        if (session.getAttribute("user") != null) {
            loginUser = (UserVO) session.getAttribute("user");
            if (loginUser.getMem_select() == 1) {
                return "index.jsp";
            }
        }
        model.addAttribute("user",loginUser);
        return "program_reg.do";
    }

    @PostMapping("/service_ask.do")
    public String serviceAskPost(HttpSession session, ProgramVO pvo) {
        if (session.getAttribute("loginUser") == null) return "login.jsp";
        if (session.getAttribute("loginUser") != null) {
            UserVO loginUser = (UserVO) session.getAttribute("loginUser");
            if (loginUser.getMem_select() == 1) {
                return "index.jsp";
            }
        }
        programservice.insertProgram(pvo);
        System.out.println("serviceVo = " + pvo);
        System.out.println("session = " + (UserVO)session.getAttribute("loginUser"));
        return "index.jsp";
    }

    @GetMapping("/vol_list.do")
    public String serviceList(Model model) {
        List<ProgramVO> list = programservice.getPrograms();
        model.addAttribute("list",list);
        return "vol-list.jsp";
    }

    @RequestMapping("/vol_dtpg.do")
    public String serviceList(ProgramVO vo, Model model) {
        ProgramVO pro = programservice.getProgramOne(vo);

        model.addAttribute("program", pro );
        return "vol_about.jsp";
    }



}
