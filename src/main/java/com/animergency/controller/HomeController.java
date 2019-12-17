package com.animergency.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String HomeView() throws Exception{
		return "/home";
	}
	
	@RequestMapping(value="/info", method=RequestMethod.GET)
	   public String Info() throws Exception{
	      return "/info";
	}

}
