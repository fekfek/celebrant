package com.fekade.celebrant.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
	public String hello(Model model) {
		model.addAttribute("msg", "Welcome to Celebrant Home Page");
		return "home";
	}
	@RequestMapping("/admin")
	public ModelAndView admin() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("message","This page is for Admins but can be accessed by Managers");
		return mv;
	}
	@RequestMapping("/manager")
	public ModelAndView manager() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("message","This page is strictly for Managers only.");
		mv.setViewName("manager");
		return mv;
	}

}
