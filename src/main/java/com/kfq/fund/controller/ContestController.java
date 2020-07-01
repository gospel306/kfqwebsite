package com.kfq.fund.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kfq.fund.service.IContestService;

@Controller
public class ContestController {
	@Autowired
	private IContestService contest_service;
	
	public void setContestService(IContestService contest_service) {
		this.contest_service = contest_service;
	}
	
	@RequestMapping(value = "existContest.do")
	@ResponseBody
	public boolean existContest(HttpSession session) {
		int check = contest_service.existContest((String) session.getAttribute("useremail"));
		if(check == 1)
			return true;
		return false;
	}
	@RequestMapping(value = "launch")
	public ModelAndView launchContest() {
		return new ModelAndView("contest/category");
	}
	@RequestMapping(value = "launch/{contesttype}")
	public ModelAndView contestDetail(@PathVariable String contesttype,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("contesttype",contesttype);
		if(session.getAttribute("useremail") == null)
			mv.setViewName("contest/briefing");
		else
			mv.setViewName("contest/briefing2");

		return mv;
	}
	@RequestMapping(value ="launch/{contesttype}/price")
	public ModelAndView contestPrice(@PathVariable String contesttype,HttpServletRequest request) {
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String service = request.getParameter("service");
		String sector = request.getParameter("sector");
		String idea = request.getParameter("idea");
		String
	}
}
