package cn.enilu.flash.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController extends BaseController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "home";
	}

	@RequestMapping(value = "/no_permission")
	public String noPermission() {
		return "no_permission";
	}
}
