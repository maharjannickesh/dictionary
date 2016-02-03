package com.nick.dictionary.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

@Entity
public class User implements Serializable {

	private static final long serialVersionUID = 1L;


	@Id
	@GeneratedValue
	private Integer id;

	@Size(min = 3, message = "Must be more than 3 character")
	@Column(unique = true)
	// @UniqueUsername(message = "Username Already taken")
	private String name;

	@Size(min = 1, message = "Not Valid Email")
	@Email(message = "Not Valid Email")
	@Column(unique = true)
	private String email;

	@Size(min = 5, message = "Must be more than 5 character")
	private String password;
	private boolean enabled;


	


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

}
