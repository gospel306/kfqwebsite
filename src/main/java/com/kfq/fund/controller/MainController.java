package com.kfq.fund.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kfq.fund.service.IContestService;
import com.kfq.fund.vo.ContestVO;
import com.kfq.fund.vo.JoinVO;
import com.kfq.fund.vo.Pagination;

@Controller
public class MainController {
	@Autowired
	private IContestService service;
	
	public void setService(IContestService service) {
		this.service = service;
	}
	@RequestMapping(value="main")
	public ModelAndView main(HttpSession session) {
		ModelAndView mv = new ModelAndView("main");
		Pagination page = new Pagination();
		page.pageInfo(1, 10);
		page.setListSize(13);
		
		mv.addObject("lastlists",service.getTop(page, 3));
		mv.addObject("benners1",service.showendbenner(5));
		mv.addObject("benners2",service.showendbenner(12));
		System.out.println(session.getAttribute("useremail"));
		return mv;
	}
	
	@RequestMapping(value="come")
	public ModelAndView come() {
		return new ModelAndView("notice/comegil");
	}
}
