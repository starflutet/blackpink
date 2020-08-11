package com.jhp.blackpink.chat;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/chat")
public class ChatController {	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		return "chatboard/chat";
	}
	
}
