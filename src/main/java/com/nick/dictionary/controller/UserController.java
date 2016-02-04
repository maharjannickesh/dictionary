package com.nick.dictionary.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nick.dictionary.entity.User;
import com.nick.dictionary.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	private UserService userService;

	@ModelAttribute("user")
	private User construct() {
		return new User();
	}

	@RequestMapping(value = "/adduser")
	public String addUser(@Valid @ModelAttribute("user") User user) {
		return "/user/adduser";
	}

	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("user") User user, BindingResult result) {
		
		if (result.hasErrors()) {
			return "user/adduser";
		}
		userService.save(user);
		return "redirect:/user/user?success=1";

	}
	
	@RequestMapping(value="/user")
	public String allUser(Model model) {
		model.addAttribute("users", userService.findAllUser());
		return "user/alluser";
	}
	
	@RequestMapping(value="/login")
	public String login(){
		return "user/login";
	}
	
	@RequestMapping(value="/delete/{id}")
	public String deleteUser(@PathVariable int id ){
		userService.deleteUser(id);
		return "redirect:/user/user?delete=1";
	}
	
	@RequestMapping(value="/edit/{id}")
	public String editUser(@Valid @ModelAttribute("user") User user, @PathVariable int id, Model model){
		//user.setId(id);
		model.addAttribute("user", userService.getById(id));
		return "user/adduser";
	}
	
	@RequestMapping(value="/edit/{id}", method = RequestMethod.POST)
	public String saveEditUser(@PathVariable int id, @Valid @ModelAttribute("user") User user, BindingResult result ){
		if(!result.hasErrors()){
		userService.updateUser(user, id);
		return "redirect:/user/user?edit=1";
		}
		return "redirect:/user/edit/{id}";
	}
}
