package com.lizq.microservice.consumer.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lizq.microservice.commons.model.ResultData;
import com.lizq.microservice.commons.model.User;
import com.lizq.microservice.consumer.user.service.UserService;

@RestController
@RequestMapping(value="/user")
public class UserController {
	/*
	@Autowired
	private RestTemplate restTemplate;
	
	@SuppressWarnings("unchecked")
	@GetMapping(value="/{id}")
	public ResultData<User> get(@PathVariable int id) {
		return restTemplate.getForObject("http://user-service/user/" + id, ResultData.class);
	}
	*/
	@Autowired
	private UserService userService;
	@GetMapping(value="/{id}")
	public ResultData<User> get(@PathVariable int id) {
		return userService.get(id);
	}
}
