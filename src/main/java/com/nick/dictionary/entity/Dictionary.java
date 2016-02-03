package com.nick.dictionary.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Dictionary {

	@Id
	@GeneratedValue
	private int id;
	
	private String word;
	
	private String wordtype;
	
	private String definition;

	public Dictionary() {
		super();
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public String getWordtype() {
		return wordtype;
	}

	public void setWordtype(String wordtype) {
		this.wordtype = wordtype;
	}

	public String getDefinition() {
		return definition;
	}

	public void setDefinition(String definition) {
		this.definition = definition;
	}
	
	
	
}
