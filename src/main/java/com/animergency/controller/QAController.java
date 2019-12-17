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
import org.springframework.web.bind.annotation.RequestParam;

import com.animergency.service.QaService;
import com.animergency.vo.QaVO;

@Controller
@RequestMapping("/qa")
public class QAController {
   @Autowired
   QaService qaService;
   
   @RequestMapping(value="/qa", method=RequestMethod.GET)
   public String qaView(Model model) throws Exception{

      model.addAttribute("list", qaService.qalistBoard());
      
      return "/qa/qa";
   }
   @RequestMapping(value="/qawrite", method=RequestMethod.GET)
   public String qawrite(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception{
	  String checkId = (String) session.getAttribute("sessionUserId");
	  response.setContentType("text/html;charset=UTF-8");
	   PrintWriter out = response.getWriter();
	   if(checkId == "" || checkId == null) {
			out.println("<script>");
			out.println("alert('로그인 후 사용하시기 바랍니다.');");
			out.println("location.href='" + request.getContextPath() +"/member/login';");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return "qa/qawrite";
		}
   }
   
   
   @RequestMapping(value = "/qawrite", method = RequestMethod.POST)
   public String qawrite(@ModelAttribute QaVO qaVO) throws Exception {
      qaService.qainsertBoard(qaVO);
      return "redirect:/qa/qa";
   }
   @RequestMapping(value = "/qaread", method = RequestMethod.GET)
   public String qaread(@RequestParam("qIDX")int qIDX, Model model) throws Exception {
	  
      model.addAttribute("qaread", qaService.qareadBoard(qIDX));
      
      return "/qa/qaread";
   }
   
   @RequestMapping(value = "/qaupdate", method = RequestMethod.GET)
   public String qaupdate(@RequestParam("qIDX") int qIDX, Model model, HttpSession session,
		   	HttpServletResponse response, HttpServletRequest request) throws Exception{
	   String checkId = (String) session.getAttribute("sessionUserId");
	   response.setContentType("text/html;charset=UTF-8");
	   PrintWriter out = response.getWriter();
	   if(checkId == "" || checkId == null) {
			out.println("<script>");
			out.println("alert('로그인 후 사용하시기 바랍니다.');");
			out.println("location.href='" + request.getContextPath() +"/member/login';");
			out.println("</script>");
			out.close();
			return null;
		}
	   else if(!checkId.equals(qaService.qareadBoard(qIDX).getUserId())) {
		    out.println("<script>");
			out.println("alert('권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
	   }
	   else {
		   model.addAttribute("qaupdate", qaService.qareadBoard(qIDX));
		   return "/qa/qaupdate";
		}
   }
   @RequestMapping(value ="/qaupdateAction", method = RequestMethod.POST)
   public String qaupdateAction(@ModelAttribute QaVO qaVO) throws Exception{
      qaService.qaupdateBoard(qaVO);
      int qa = qaVO.getqIDX();
      String returnURL = "/qa/qaread?qIDX=" + qa;
      return "redirect:"+returnURL;
   }
   @RequestMapping(value = "/qadelete", method = RequestMethod.GET)
   public String qadelete(@RequestParam("qIDX")int qIDX, HttpSession session,
		   	HttpServletResponse response, HttpServletRequest request) throws Exception{
	   String checkId = (String) session.getAttribute("sessionUserId");
	   response.setContentType("text/html;charset=UTF-8");
	   PrintWriter out = response.getWriter();
	   if(checkId == "" || checkId == null) {
			out.println("<script>");
			out.println("alert('로그인 후 사용하시기 바랍니다.');");
			out.println("location.href='" + request.getContextPath() +"/member/login';");
			out.println("</script>");
			out.close();
			return null;
		}
	   else if(!checkId.equals(qaService.qareadBoard(qIDX).getUserId())) {
		   System.out.println("session:" + checkId);
		   System.out.println("writeId:" + qaService.qareadBoard(qIDX).getUserId());
		   out.println("<script>");
			out.println("alert('권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
	   }
	   else {
		   qaService.qadeleteBoard(qIDX);
		   return "redirect:/qa/qa";
		}
   }
   
}