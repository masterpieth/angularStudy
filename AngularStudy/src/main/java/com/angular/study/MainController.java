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
	@RequestMapping(value = "/sample4", method = RequestMethod.GET)
	public String sample4() {
		logger.info("sample4 page");
		return "sample4";
	}
	@RequestMapping(value = "/sample5", method = RequestMethod.GET)
	public String sample5() {
		logger.info("sample5 page");
		return "sample5";
	}
	@RequestMapping(value = "/sample6", method = RequestMethod.GET)
	public String sample6() {
		logger.info("sample6 page");
		return "sample6";
	}
	@RequestMapping(value = "/sample7", method = RequestMethod.GET)
	public String sample7() {
		logger.info("sample7 page");
		return "sample7";
	}
	@RequestMapping(value = "/sample8", method = RequestMethod.GET)
	public String sample8() {
		logger.info("sample8 page");
		return "sample8";
	}
	@RequestMapping(value = "/sample9", method = RequestMethod.GET)
	public String sample9() {
		logger.info("sample9 page");
		return "sample9";
	}
	@RequestMapping(value = "/sample10", method = RequestMethod.GET)
	public String sample10() {
		logger.info("sample10 page");
		return "sample10";
	}
	@RequestMapping(value = "/sample11", method = RequestMethod.GET)
	public String sample11() {
		logger.info("sample11 page");
		return "sample11";
	}
	@RequestMapping(value = "/sample12", method = RequestMethod.GET)
	public String sample12() {
		logger.info("sample12 page");
		return "sample12";
	}
	@RequestMapping(value = "/sample13", method = RequestMethod.GET)
	public String sample13() {
		logger.info("sample13 page");
		return "sample13";
	}
	@RequestMapping(value = "/sample14", method = RequestMethod.GET)
	public String sample14() {
		logger.info("sample14 page");
		return "sample14";
	}
	@RequestMapping(value = "/sample15", method = RequestMethod.GET)
	public String sample15() {
		logger.info("sample15 page");
		return "sample15";
	}
	@RequestMapping(value = "/sample16", method = RequestMethod.GET)
	public String sample16() {
		logger.info("sample16 page");
		return "sample16";
	}
}
