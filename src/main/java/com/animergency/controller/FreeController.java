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

import com.animergency.service.FreeService;
import com.animergency.service.UserService;
import com.animergency.vo.FreeVO;
import com.animergency.vo.UserVO;

@Controller
@RequestMapping("/free")
public class FreeController {
   
   @Autowired
   FreeService freeService;
   @Autowired
   UserService uService;
   
   @RequestMapping(value="/free", method=RequestMethod.GET)
   public String freeView(Model model) throws Exception{
      model.addAttribute("list", freeService.freelistBoard());
      return "/free/free";
   }

   @RequestMapping(value="/freewrite", method=RequestMethod.GET)
   public String freewrite(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception{
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
			return "/free/freewrite";
		}
   }
   
   
   @RequestMapping(value = "/freewrite", method = RequestMethod.POST)
   public String freewrite(@ModelAttribute FreeVO freeVO) throws Exception {
      freeService.freeinsertBoard(freeVO);
      return "redirect:/free/free";
   }
   @RequestMapping(value = "/freeread", method = RequestMethod.GET)
   public String freeread(@RequestParam("fIDX")int fIDX, Model model) throws Exception {
      model.addAttribute("freeread", freeService.freereadBoard(fIDX));
      return "/free/freeread";
   }
   
   @RequestMapping(value = "/freeupdate", method = RequestMethod.GET)
   public String freeupdate(@RequestParam("fIDX")int fIDX, Model model, HttpSession session,
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
	   else if(!checkId.equals(freeService.freereadBoard(fIDX).getUserId())) {
 		    out.println("<script>");
			out.println("alert('권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
	   }
	   else {
			model.addAttribute("freeupdate", freeService.freereadBoard(fIDX));
			return "/free/freeupdate";
		}
   }
   @RequestMapping(value ="/freeupdateAction", method = RequestMethod.POST)
   public String freeupdateAction(@ModelAttribute FreeVO freeVO) throws Exception{
      freeService.freeupdateBoard(freeVO);
      int free = freeVO.getfIDX();
      String returnURL = "/free/freeread?fIDX=" + free;
      return "redirect:"+returnURL;
   }
   @RequestMapping(value = "/freedelete", method = RequestMethod.GET)
   public String freedelete(@RequestParam("fIDX")int fIDX, HttpSession session,
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
	   else if(!checkId.equals(freeService.freereadBoard(fIDX).getUserId())) {
		   System.out.println("session:" + checkId);
		   System.out.println("writeId:" + freeService.freereadBoard(fIDX).getUserId());
		   out.println("<script>");
			out.println("alert('권한이 없습니다.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
	   }
	   else {
			freeService.freedeleteBoard(fIDX);
			return "redirect:/free/free";
		}
   }
}