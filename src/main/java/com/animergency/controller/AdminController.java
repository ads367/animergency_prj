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

import com.animergency.service.GradeService;
import com.animergency.vo.GradeVO;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	GradeService service;

	// 관리자 페이지로 이동
	@RequestMapping(value = "/adminPage", method = RequestMethod.GET)
	public String adminPage(@ModelAttribute GradeVO gradeVO, Model model, 
			HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception {
		String checkId = (String) session.getAttribute("sessionUserId");
		int checkGrade = (Integer) session.getAttribute("sessionUserGrade");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (checkId == "" || checkId == null) {
			out.println("<script>");
			out.println("alert('로그인 후  사용하시기 바랍니다.');");
			out.println("location.href='" + request.getContextPath() +"/member/login';");
			out.println("</script>");
			out.close();
			return null;
		} else if (checkGrade < 99) {
			out.println("<script>");
			out.println("alert('권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		} else {
			model.addAttribute("gradeList", service.gradeList());
//			List<GradeVO> list= service.gradeList();
//			for(GradeVO vo : list) {
//				System.out.println( vo.getUserId() );
//			}
			return "/admin/adminPage";
		}
	}
	
	// 사용자 관리 페이지로 이동
	@RequestMapping(value = "/adminPage_userManagement", method = RequestMethod.GET)
	public String adminPage_userManagement(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception {
		String checkId = (String) session.getAttribute("sessionUserId");
		int checkGrade = (Integer) session.getAttribute("sessionUserGrade");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (checkId == "" || checkId == null) {
			out.println("<script>");
			out.println("alert('로그인 후 사용하시기 바랍니다.');");
			out.println("location.href='" + request.getContextPath() +"/member/login';");
			out.println("</script>");
			out.close();
			return null;
		} else if (checkGrade < 99) {
			out.println("<script>");
			out.println("alert('권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return "/admin/adminPage_userManagement";
		}
	}
	
	// 게시물 관리 페이지로 이동
	@RequestMapping(value = "/adminPage_boardManagement", method = RequestMethod.GET)
	public String adminPage_boardManagement(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception {
		String checkId = (String) session.getAttribute("sessionUserId");
		int checkGrade = (Integer) session.getAttribute("sessionUserGrade");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if (checkId == "" || checkId == null) {
			out.println("<script>");
			out.println("alert('로그인 후 사용하시기 바랍니다.');");
			out.println("location.href='" + request.getContextPath() +"/member/login';");
			out.println("</script>");
			out.close();
			return null;
		} else if (checkGrade < 99) {
			out.println("<script>");
			out.println("alert('권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return "/admin/adminPage_boardManagement";
		}
	}
	
	// 등업 신청 프로세스
	@RequestMapping(value="/userGradeAction", method=RequestMethod.POST)
	public String userGradeAction(@ModelAttribute GradeVO gradeVO, HttpSession session) throws Exception {
		String checkId = (String) session.getAttribute("sessionUserId");
		service.gradeUpApply(gradeVO);
		String returnURL = "/member/userInfo?userId="+checkId;
		return "redirect:" + returnURL;
	}
	
	// 삭제
	@RequestMapping(value="/deleteAction", method=RequestMethod.GET)
	public String gradeDeleteAction(@ModelAttribute GradeVO gradeVO) throws Exception {
		service.gradeDelete(gradeVO);
		return "redirect:/admin/adminPage";
	}
}
