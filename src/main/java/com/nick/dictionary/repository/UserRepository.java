package com.nick.dictionary.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nick.dictionary.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	User getById(int id);



}
