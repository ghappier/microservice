package com.lizq.microservice.config.client;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RefreshScope
public class ConfigClientController {
	
	/**
	 * 必须要config-server完成启动才能启动本项目，否则会报could not resolve placeholder 'from'的错误
	 */
	@Value("${from}")
	private String from;
	
	@GetMapping("/from")
	public String from() {
		return this.from;
	}
}
