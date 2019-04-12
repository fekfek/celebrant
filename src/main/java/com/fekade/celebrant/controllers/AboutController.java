package com.fekade.celebrant.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutController {
	@RequestMapping("/biography")
	public String biography() {
		return "biography";
	}
	@RequestMapping("/services")
	public String services() {
		return "services";
	}
	@RequestMapping("/fairfaxLaws")
	public String fairfaxLaws() {
		return "fairfaxCoLaws";
	}
	@RequestMapping("/testimonials")
	public String testimonials() {
		return "testimonials";
	}
	@RequestMapping("/license")
	public String license() {
		return "license";

}
}
