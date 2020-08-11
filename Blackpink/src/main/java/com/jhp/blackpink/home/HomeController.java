package com.jhp.blackpink.home;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/home")
public class HomeController {	
	@RequestMapping(value = "/main", method = RequestMethod.POST)
	public String mainPost() {
		
		return "redirect:/home/main";
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		return "home/main";
	}
	@RequestMapping(value = "/sazin", method = RequestMethod.GET)
	public String sazin() {
		return "home/sazin";
	}
	
}
