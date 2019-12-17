package com.animergency.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.animergency.service.UserService;
import com.animergency.vo.AnimalVO;
import com.animergency.vo.UserVO;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	UserService uService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String View() throws Exception {
		String returnURL = "/member/login";
		return returnURL;
	}

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinView() throws Exception {
		String returnURL = "/member/join";
		return returnURL;
	}

	@RequestMapping(value = "/passwordSearch", method = RequestMethod.GET)
	public String passwordSarch() throws Exception {
		String returnURL = "/member/passwordSearch";
		return returnURL;
	}

	@RequestMapping(value = "/passwoardSearchAction", method = RequestMethod.POST)
	public String passwordSearchAction(@ModelAttribute UserVO userVO, HttpServletResponse response) throws Exception {
		String returnURL = "/member/login";
		uService.userPasswordSearch(userVO, response);
		return "redirect:"+returnURL;
	}

	// 중복확인
	@RequestMapping(value = "/userIdCheck", method = RequestMethod.POST)
	@ResponseBody
	public String userIdCheck(String userId) throws Exception {

		int idck = uService.userIdCheck(userId);

		String result = "0";

		if (idck == 1) {
			result = "1";
			return result;
		} else {
			return result;
		}
	}

	// 회원가입 프로세스
	@RequestMapping(value = "/joinAction", method = RequestMethod.POST)
	public String userJoinAction(@ModelAttribute UserVO userVO, HttpSession session, HttpServletResponse response)
			throws Exception {
		String returnURL = "/member/animalInfo";
		uService.userJoin(userVO);
		userVO = uService.userLogin(userVO, response);
		session.setAttribute("sessionUserId", userVO.getUserId());
		session.setAttribute("sessionUserName", userVO.getUserName());
		session.setAttribute("sessionUserGrade", userVO.getUserGrade());
		return "redirect:" + returnURL;
	}

	// 로그인 프로세스
	@RequestMapping(value = "/loginAction", method = RequestMethod.POST)
	public String userLoginAction(@ModelAttribute UserVO userVO, HttpSession session, HttpServletResponse response)
			throws Exception {
		String returnURL = "/";
		userVO = uService.userLogin(userVO, response);
		session.setAttribute("sessionUserId", userVO.getUserId());
		session.setAttribute("sessionUserName", userVO.getUserName());
		session.setAttribute("sessionUserGrade", userVO.getUserGrade());
		return "redirect:" + returnURL;
	}

	// 회원정보 페이지
	@RequestMapping(value = "/userInfo", method = RequestMethod.GET)
	public String userInfoView(@ModelAttribute UserVO userVO, HttpSession session, HttpServletResponse response,
			Model model) throws Exception {
		String gradeCheck = "없음";
		String returnURL = "/member/userInfo";
		String sessionID = (String) session.getAttribute("sessionUserId");
		String userId = userVO.getUserId();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (sessionID == null) {
			out.println("<script>");
			out.println("alert('권한이 없습니다!!!\n로그인이 되어있지 않습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		} else if (!sessionID.equals(userId)) {
			out.println("<script>");
			out.println("alert('권한이 없습니다!!!\n정보가 일치하지 않습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		} else {
			model.addAttribute("userVO", uService.userInfo(userVO));
			if (uService.userInfo(userVO).getUserGrade() == 1) {
				gradeCheck = "일반";
			} else if (uService.userInfo(userVO).getUserGrade() == 2) {
				gradeCheck = "전문가";
			} else if (uService.userInfo(userVO).getUserGrade() == 99) {
				gradeCheck = "운영자";
			}
			model.addAttribute("gradeCheck", gradeCheck);
			return returnURL;
		}
	}

	// 등급 페이지로 이동
	@RequestMapping(value = "/gradeView", method = RequestMethod.GET)
	public String gradeView(@ModelAttribute UserVO userVO, Model model) throws Exception {
		model.addAttribute("userVO", uService.userInfo(userVO));
		return "/member/userGradeUp";
	}

	// 회원정보 수정
	@RequestMapping(value = "/updateAction", method = RequestMethod.POST)
	public String updateUserAction(@ModelAttribute UserVO userVO) throws Exception {
		uService.userUpdate(userVO);
		System.out.println(userVO.toString());
		String userId = userVO.getUserId();
		String returnURL = "/member/userInfo?userId=" + userId;
		return "redirect:" + returnURL;
	}

	// 로그아웃
	@RequestMapping(value = "/logoutAction", method = RequestMethod.GET)
	public String logoutAction(HttpSession session) throws Exception {
		String returnURL = "/";
		session.invalidate();
		return "redirect:" + returnURL;
	}

	// 동물 리스트 페이지
	@RequestMapping(value = "/animalList", method = RequestMethod.GET)
	public String AnimalListView(@ModelAttribute AnimalVO animalVO, Model model, HttpSession session,
				HttpServletResponse response, HttpServletRequest request) throws Exception {
		String returnURL = "/member/animalList";
		String checkId = (String) session.getAttribute("sessionUserId");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (checkId == "" || checkId == null) {
			out.println("<script>");
			out.println("alert('로그인 후 사용하시기 바랍니다.');");
			out.println("location.href='" + request.getContextPath() +"/member/login';");
			out.println("</script>");
			out.close();
			return null;
		} else {
			model.addAttribute("aniList", uService.animalList(animalVO));
			return returnURL;
		}
	}

	// 동물 정보 입력 페이지
	@RequestMapping(value = "/animalInfo", method = RequestMethod.GET)
	public String AnimalInfoView(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception {
		String returnURL = "/member/animalInfo";
		String checkId = (String) session.getAttribute("sessionUserId");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (checkId == "" || checkId == null) {
			out.println("<script>");
			out.println("alert('로그인 후 사용하시기 바랍니다.');");
			out.println("location.href='" + request.getContextPath() +"/member/login';");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return returnURL;
		}
	}
	
	// 애완동물 입력 프로세스
	@RequestMapping(value="/animalInfoAction", method=RequestMethod.POST)
	public String AnimalInfoAction(@ModelAttribute AnimalVO animalVO, HttpSession session) throws Exception {
		String idCheck = (String) session.getAttribute("sessionUserId");
		String returnURL = "/member/animalList?userId=" + idCheck;
		uService.animalJoin(animalVO);
		return "redirect:"+returnURL;
	}

}
