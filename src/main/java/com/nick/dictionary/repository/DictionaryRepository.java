package com.nick.dictionary.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nick.dictionary.entity.Dictionary;

@Repository
public interface DictionaryRepository extends JpaRepository<Dictionary, Integer>{

	
	List<Dictionary> findByWord(String word);



}
