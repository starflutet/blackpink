package com.jhp.blackpink.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface NoticeMapper {
	public List<NoticeVO> selNoticeList();
	public NoticeVO selNoticeDetail(NoticeVO param);
	public int insNotice(NoticeVO param);
	public int delNotice(NoticeVO param);
	public int updNotice(NoticeVO param);
}

