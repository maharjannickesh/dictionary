package com.nick.dictionary.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nick.dictionary.entity.Dictionary;
import com.nick.dictionary.service.DictionaryService;

@Controller
public class DictionaryController {

	@Autowired
	private DictionaryService dictionaryService;
	
	@ModelAttribute
	public Dictionary construct(){
		return new Dictionary();
	}
	
	@RequestMapping(value="/addword")
	public String addWord(){
		return "dictionary/addword";
	}
	
	@RequestMapping(value="/saveword", method = RequestMethod.GET)
	public String findWord(Model model, @RequestParam String word){
		model.addAttribute("word", dictionaryService.findWord(word));
		return "dictionary/previouswords";
		
	}
	
	@RequestMapping(value="/saveword",method = RequestMethod.POST)
	public String saveWord(@Valid  @ModelAttribute("dictionary") Dictionary dictionary, BindingResult result, @RequestParam String word){
		if (!result.hasErrors()){
			dictionaryService.save(dictionary);
			return "redirect:/addword";
		}
		
		return "redirect:/saveword/?word="+word;
	}
}	
	

