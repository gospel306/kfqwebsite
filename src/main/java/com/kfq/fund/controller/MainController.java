package com.kfq.fund.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kfq.fund.service.IContestService;

@Controller
public class MainController {
	@Autowired
	private IContestService service;
	
	public void setService(IContestService service) {
		this.service = service;
	}
	@RequestMapping(value="main")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView("main");
		mv.addObject("benners1",service.showbenner(5));
		mv.addObject("benners2",service.showbenner(12));
		return mv;
	}
}
