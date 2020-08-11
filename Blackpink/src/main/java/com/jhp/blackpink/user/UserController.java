package com.jhp.blackpink.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhp.blackpink.home.HomeVO;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService service;
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "user/login";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(UserVO param, HttpSession hs) {
		System.out.println("서버에서 받은 구글 PK : "+param.getS_pk());
		System.out.println("유저의 이름 : " +param.getNm());
		
		param = service.selUser(param);
		hs.setAttribute("loginUser", param);
		System.out.println("i_user : " +param.getI_user());
		return "redirect:/home/main";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession hs) {
		hs.invalidate();
		return "redirect:/user/login";
	}
}
