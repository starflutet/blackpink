package com.jhp.blackpink.notice;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhp.blackpink.user.UserVO;
import com.jhp.blackpink.util.Utils;

@Controller
@RequestMapping("/notice")
public class NoticeController {	
	@Autowired 
	private NoticeService service;
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model,HttpSession hs, HttpServletResponse response) throws IOException {
		Utils.userCk(hs, response);
		model.addAttribute("data",service.selNoticeList());
		//이제 리스트 뿌려주면 됨
		return "notice/list";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(NoticeVO param,HttpSession hs, HttpServletResponse response) throws IOException {
		Utils.userCk(hs, response);
		UserVO loginUser = (UserVO) hs.getAttribute("loginUser");
		System.out.println("i_user : "+ loginUser.getI_user());
		System.out.println("nm : "+loginUser.getNm());
		param.setI_user(loginUser.getI_user());
		param.setNm(loginUser.getNm());
		service.insNotice(param);
		return "redirect:/notice/list";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String sazin(NoticeVO param,HttpSession hs, HttpServletResponse response) throws IOException {
		Utils.userCk(hs, response);
		service.delNotice(param);
		return "redirect:/notice/list";
	}
	@ResponseBody
	@RequestMapping(value = "/getNoticeDetail", method = RequestMethod.GET)
	public Map<String, Object> detail(NoticeVO param,HttpSession hs, HttpServletResponse response) throws IOException {
		Utils.userCk(hs, response);
		System.out.println("--run getNoticeDetail!! --");
		System.out.println("i_notice : "+param.getI_notice());
		Map<String, Object> map = new HashMap();
		System.out.println(service.selNoticeDetail(param));
		map.put("result", service.selNoticeDetail(param));
		return map;
	}
	
	@RequestMapping(value = "/upd", method = RequestMethod.POST)
	public String sazin(NoticeVO param){
		System.out.println("i_notice : "+param.getI_notice());
		System.out.println("title: " +param.getTitle());
		System.out.println("noticetnt: " +param.getNoticetnt());
		
		service.updNotice(param);
		return "redirect:/notice/list";
	}

}
