package com.jhp.blackpink.util;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.jhp.blackpink.user.UserVO;

public class Utils {
	public static void userCk(HttpSession hs, HttpServletResponse response) throws IOException {
		UserVO loginUser = (UserVO) hs.getAttribute("loginUser");
		if(loginUser == null) {
			response.sendRedirect("/blackpink/user/login");
		}
	}
}
