package com.angular.study;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/sample1", method = RequestMethod.GET)
	public String sample1() {
		logger.info("sample1 page");
		return "sample1";
	}
	@RequestMapping(value = "/sample2", method = RequestMethod.GET)
	public String sample2() {
		logger.info("sample2 page");
		return "sample2";
	}
	
	@RequestMapping(value = "/sample3", method = RequestMethod.GET)
	public String sample3() {
		logger.info("sample3 page");
		return "sample3";
	}
}
