package com.jhp.blackpink.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhp.blackpink.user.UserVO;

@Service//빈등록 commponent랑 같은역할
public class NoticeService {
	
	@Autowired
	private NoticeMapper mapper;
	
	public List<NoticeVO> selNoticeList(){
		return mapper.selNoticeList();
	}
	public NoticeVO selNoticeDetail(NoticeVO param) {
		System.out.println("--run selNoticeDetail!--");
		return mapper.selNoticeDetail(param);
	}
	public int insNotice(NoticeVO param){
		System.out.println("--run insNotice!--");
		return mapper.insNotice(param);
	}
	public int delNotice(NoticeVO param) {
		return mapper.delNotice(param);
	}
	public int updNotice(NoticeVO param) {
		return mapper.updNotice(param);
	}
		
}
