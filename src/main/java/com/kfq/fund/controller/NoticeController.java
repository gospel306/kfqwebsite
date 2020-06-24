package com.kfq.fund.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kfq.fund.service.INoticeService;
import com.kfq.fund.vo.NoticeVO;
import com.kfq.fund.vo.Pagination;


@Controller
public class NoticeController {
	private Logger log = LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired
	private INoticeService notice_service;
	
	public void setNotice_service(INoticeService notice_service) {
		this.notice_service = notice_service;
	}
	
	@RequestMapping(value = {"/notice", "/notice/p-{pagenum}"}, method = RequestMethod.GET)
	public ModelAndView selectNoticeList(@PathVariable(required = false) String pagenum) {
		int listCnt = notice_service.getNoticeListCnt();
		int page = 1;
		if(pagenum != null)
			page = Integer.parseInt(pagenum);
		Pagination pagination = new Pagination();
		pagination.pageInfo(page, listCnt);
		List<NoticeVO> notices = notice_service.getNoticeList(pagination);
		HashMap<String, String> category = new HashMap<>();
		category.put("title","공지사항");
		category.put("content","라우드소싱의 최근 소식을 만나보세요.");
		ModelAndView mv = new ModelAndView("noticeboard");
		mv.addObject("pagination",pagination);
		mv.addObject("notices",notices);
		mv.addObject("category",category);
		return mv;
	}
	@RequestMapping(value = "/notice/idx-{num}", method = RequestMethod.GET)
	public ModelAndView seleNoticedetail(@PathVariable String num) {
		ModelAndView mv = new ModelAndView("notice");
		NoticeVO notice = notice_service.getNoticeByNo(num);
		mv.addObject("notice",notice);
		return mv;
	}
}