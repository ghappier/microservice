package com.lizq.microservice.provider.user;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lizq.microservice.commons.model.ResultData;
import com.lizq.microservice.commons.model.User;

@RestController
@RequestMapping(value="/user")
public class UserController {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private DiscoveryClient client;
	
	@GetMapping(value="/{id}")
	public ResultData<User> get(@PathVariable int id) {
		List<String> services = client.getServices();
		for (String s : services) {
			LOGGER.info(s);
		}
		User user = new User();
		user.setId(id);
		user.setName("lizq");
		user.setAge(25);
		return new ResultData<User>().data(user);
	}
}
