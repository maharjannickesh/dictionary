package com.nick.dictionary.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.nick.dictionary.entity.Role;
import com.nick.dictionary.entity.User;
import com.nick.dictionary.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	private Role r;

	public void save(User user) {
		user.setEnabled(true);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setPassword(encoder.encode(user.getPassword()));
		userRepository.save(user);

	}

	public List<User> findAllUser() {
		List<User> user = new ArrayList<>();

		user = userRepository.findAll();
		return user;
	}
	
	public void deleteUser(int id){
		userRepository.delete(id);
	}

	public User getById(int id) {
		return userRepository.getById(id);
		
	}

	public void updateUser(User user, int id) {
		//userRepository.updateById(user, id);
		user.setId(id);
		userRepository.save(user);
		userRepository.flush();
	}

}
