package com.lizq.microservice.consumer.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.client.RestTemplate;

import com.lizq.microservice.commons.model.ResultData;
import com.lizq.microservice.commons.model.User;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;

@Service
public class UserService {

	@Autowired
	private RestTemplate restTemplate;
	
	@SuppressWarnings("unchecked")
	@HystrixCommand(fallbackMethod="getFallback")
	public ResultData<User> get(@PathVariable int id) {
		return restTemplate.getForObject("http://user-service/user/" + id, ResultData.class);
	}
	private ResultData<User> getFallback(int id) {
		return new ResultData<User>().fail().msg("断路器信息：错误");
	}
}
