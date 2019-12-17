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

import com.animergency.service.TnService;
import com.animergency.service.UserService;
import com.animergency.vo.TnVO;

@Controller
@RequestMapping("/training")
public class TrainingController {
   @Autowired
   TnService tnService;
   
   @Autowired
   UserService uService;
   
   @RequestMapping(value="/training", method=RequestMethod.GET)
   public String tnView(Model model) throws Exception{
      model.addAttribute("list", tnService.tnlistBoard());
      return "/training/training";
   }
   
   @RequestMapping(value="/tnwrite", method=RequestMethod.GET)
   public String tnwrite(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception{
	   String checkId = (String) session.getAttribute("sessionUserId");
	   Integer checkGrade = (Integer) session.getAttribute("sessionUserGrade");
	   System.out.println();
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
	   else if(checkGrade != null) {
		   if(checkGrade < 2) {
			   out.println("<script>");
			   out.println("alert('권한이 없습니다.');");
			   out.println("history.back();");
			   out.println("</script>");
			   out.close();
			   return null;
		   }
		   return "/training/tnwrite";
	   }
	   else {
			return "/training/tnwrite";
		}
   }
   
   
   @RequestMapping(value = "/tnwrite", method = RequestMethod.POST)
   public String tnwrite(@ModelAttribute TnVO tnVO) throws Exception {
      tnService.tninsertBoard(tnVO);
      return "redirect:/training/training";
   }
   @RequestMapping(value = "/tnread", method = RequestMethod.GET)
   public String tnread(@RequestParam("tIDX")int tIDX, Model model) throws Exception {
      model.addAttribute("tnread", tnService.tnreadBoard(tIDX));
      return "/training/tnread";
   }
   
   @RequestMapping(value = "/tnupdate", method = RequestMethod.GET)
   public String tnupdate(@RequestParam("tIDX") int tIDX, Model model, HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception{
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
	   else if(!checkId.equals(tnService.tnreadBoard(tIDX).getUserId())) {
 		    out.println("<script>");
			out.println("alert('권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
	   }
	   else {
		   model.addAttribute("tnupdate", tnService.tnreadBoard(tIDX));
		   return "/training/tnupdate";
		}
   }
   @RequestMapping(value ="/tnupdateAction", method = RequestMethod.POST)
   public String tnupdateAction(@ModelAttribute TnVO tnVO) throws Exception{
      tnService.tnupdateBoard(tnVO);
      int tn = tnVO.gettIDX();
      String returnURL = "/training/tnread?tIDX=" + tn;
      return "redirect:"+returnURL;
   }
   @RequestMapping(value = "/tndelete", method = RequestMethod.GET)
   public String tndelete(@RequestParam("tIDX")int tIDX) throws Exception{
      tnService.tndeleteBoard(tIDX);
      return "redirect:/training/training";
   }
   
   
}