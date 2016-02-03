package com.nick.dictionary.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping("/test")
	public String test() {
		return "test";
	}
	
	@RequestMapping("/testSecurity")
	public String testSecurity() {
		return "test";
	}
}
