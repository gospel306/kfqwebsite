package com.kfq.fund.controller;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kfq.fund.service.INoticeServiceImpl;
import com.kfq.fund.vo.NoticeVO;
import com.kfq.fund.vo.Pagination;


@Controller
public class NoticeController {
	@Autowired
	private INoticeServiceImpl notice_service;
	
	public void setNotice_service(INoticeServiceImpl notice_service) {
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
		ModelAndView mv = new ModelAndView("notice/noticeboard");
		mv.addObject("pagination",pagination);
		mv.addObject("notices",notices);
		mv.addObject("category",category);
		return mv;
	}
	@RequestMapping(value = "/notice/idx-{num}", method = RequestMethod.GET)
	public ModelAndView selectNoticedetail(@PathVariable String num) {
		ModelAndView mv = new ModelAndView("notice/notice");
		NoticeVO notice = notice_service.getNoticeByNo(num);
		mv.addObject("notice",notice);
		return mv;
	}
	@RequestMapping(value = "/notice/insert")
	public ModelAndView insertNotice() {
		ModelAndView mv = new ModelAndView("noticeinsert");
		return mv;
	}
	@RequestMapping(value = "insertnotice.do")
	public String insertnotice(HttpServletRequest request) {
		NoticeVO notice = null;
		notice_service.insertNotice(notice);
		BigDecimal num = null;
		return "redirect:/notice/idx-"+num;
	}
}