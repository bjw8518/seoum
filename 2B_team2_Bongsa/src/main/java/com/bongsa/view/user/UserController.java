package com.bongsa.view.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bongsa.biz.user.UserVO;
import com.bongsa.biz.user.impl.UserServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/")
public class UserController {

	@Autowired
	private UserServiceImpl userService;

	// 메인으로 가는길

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index.jsp";
	} // 어디에 둬야 할지 몰라서 ^^;

	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String mainView() {
		return "index.jsp";
	} // 어디에 둬야 할지 몰라서 ^^;

	@RequestMapping(value = "*/home.do", method = RequestMethod.GET)
	public String mainView2() {
		return "${pageContext.request.contextPath}/index.jsp";
	}

	// 메인으로 가는길 끝

	// 로그인

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String LoginView() {
		return "redirect:login.jsp";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String LoginGo(UserVO user, HttpSession session) {
		UserVO loginuser = userService.UserLogin(user);
		if (loginuser != null) {
			session.setAttribute("user", loginuser);
			return "index.jsp";
		} else
			return "login.jsp";
	}

	// 로그인 끝

	// 로그아웃

	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logoutGO(HttpSession session) {
		session.invalidate();
		return "index.jsp";
	}
	// 로그아웃 끝

	// 가입

	@RequestMapping("/idcheck.do") // 아이디 중복체크
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String userid) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();

		count = userService.idcheck(userid);
		map.put("cnt", count);
		return map;
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String JoinView() {
		return "join.jsp";
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String JoinGo(@ModelAttribute("user") UserVO user) {
		if (userService.joinUser(user) == 1)
			return "login.jsp";
		else
			return "join.do";
	}

	// 가입 끝

	// 비밀번호 찾기

	@RequestMapping(value = "/findpw.do", method = RequestMethod.GET)
	public String findpwView() {
		return "findpw.jsp";
	}

	@RequestMapping(value = "/findpw.do", method = RequestMethod.POST)
	public ModelAndView findpw_check(UserVO vo, ModelAndView mav) {
		UserVO user = userService.findpw(vo);
		
		if (user != null) {
			System.out.println("user.getMem_pw() = " + user.getMem_pw());
			mav.addObject("pw", "찾은 비밀번호 : " + user.getMem_pw());
		} else {
			mav.addObject("pw", "존재하지않는 유저");
		}
		mav.setViewName("redirect:findpw.jsp");
		return mav;
	}
	// 아이디 찾기
	
	@RequestMapping(value = "/findid.do", method = RequestMethod.GET)
	public String findidView() {
		return "findid.jsp";
	}
	
	@RequestMapping(value = "/findid.do", method = RequestMethod.POST)
	public ModelAndView findid_check(UserVO vo, ModelAndView mav) {
		UserVO user = userService.findid(vo);
		
		if (user != null) {
			System.out.println("user.getMem_id() = " + user.getMem_id());
			mav.addObject("pw", "찾은 비밀번호 : " + user.getMem_id());
		} else {
			mav.addObject("pw", "존재하지 않는 정보");
		}
		mav.setViewName("redirect:findid.jsp");
		return mav;
	}

}
