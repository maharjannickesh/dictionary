package com.nick.dictionary.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nick.dictionary.entity.User;
import com.nick.dictionary.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@ModelAttribute("user")
	private User construct() {
		return new User();
	}

	@RequestMapping(value = "/adduser")
	public String addUser() {
		return "/user/adduser";
	}

	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors()) {
			return "user/adduser";
		}
		userService.save(user);
		return "redirect:/adduser?success=1";

	}
	
	@RequestMapping(value="/user")
	public String allUser(Model model) {
		model.addAttribute("users", userService.findAllUser());
		return "user/alluser";
	}
}
