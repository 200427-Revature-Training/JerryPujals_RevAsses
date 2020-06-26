package com.teir4.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.teir4.entities.User;
import com.teir4.services.UserService;

@RestController
@RequestMapping("/User")
public class UserController {

	@Autowired
	UserService userService;

	@PostMapping
	public User save(@RequestBody User user) {
		return userService.save(user);
	}
	
	// GET food by ID
	@GetMapping("/{id}")
	public User getUserById(@PathVariable int id) {
		return userService.getUserById(id);
	}
	
}
