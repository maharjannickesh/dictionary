package com.nick.dictionary.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nick.dictionary.entity.Dictionary;
import com.nick.dictionary.service.DictionaryService;

@Controller
public class FrontController {
	
	@Autowired
	private DictionaryService dictionaryService;

	@ModelAttribute
	private Dictionary construct(){
		return new Dictionary();
	}
	
	@RequestMapping(value="/")
	public String front(){
		return "front/home";
	}
	
	@RequestMapping(value="/search")
	public String search(@RequestParam String word, Model model){
		model.addAttribute("word", dictionaryService.findWord(word));
		return "front/words";
	}
	
	@RequestMapping(value="/api/search")
	public @ResponseBody List<Dictionary> search(@RequestParam String word){
		return dictionaryService.findWord(word);
	}
	
	
}
