package com.angular.study;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HttpController {

	private static final Logger logger = LoggerFactory.getLogger(HttpController.class);
	
	@ResponseBody
	@RequestMapping(value = "/httpTest", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String httpTest() {
		logger.info("httpTest invoked");
		return "Data From Server";
	}
	
}
