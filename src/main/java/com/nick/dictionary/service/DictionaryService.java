package com.nick.dictionary.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nick.dictionary.entity.Dictionary;
import com.nick.dictionary.repository.DictionaryRepository;

@Service
public class DictionaryService {
	
	@Autowired
	private DictionaryRepository dictionaryRepository;
	
	public List<Dictionary> findWord(String word) {
		List<Dictionary> dictionaries = new ArrayList<>();

		dictionaries = dictionaryRepository.findByWord(word);
		return dictionaries;
	}
	
	public void save(Dictionary dictionary){
		dictionaryRepository.save(dictionary);
	}

	public void delete(int id) {
		dictionaryRepository.delete(id);
	
	}

	public Dictionary getById(int id) {
		return dictionaryRepository.getById(id);
	}

	public void saveEdit(int id, Dictionary dictionary) {
		dictionary.setId(id);
		dictionaryRepository.save(dictionary);
		dictionaryRepository.flush();
		
		
	}

}
