package com.kfq.fund.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kfq.fund.service.IArticalService;
import com.kfq.fund.vo.ArticalVO;

@Controller
public class WebController {
	private Logger log = LoggerFactory.getLogger(WebController.class);
	
	@Autowired
	private IArticalService artical_service;
	
	public void setArtical_service(IArticalService artical_service) {
		this.artical_service = artical_service;
	}
	
	@RequestMapping(value ="/notice", method = RequestMethod.GET)
	public ModelAndView selectArticalByCategory(@RequestParam(required = false, defaultValue = "")String art_category) {
		ModelAndView mv = new ModelAndView();
		List<ArticalVO> articals = new ArrayList<ArticalVO>();
		articals = artical_service.selectArticalByCategory(art_category);
		mv.addObject("articals",articals);
		mv.setViewName("board/notice");
		return mv;
	}
	
	@RequestMapping("/index")
	public ModelAndView test() throws Exception{
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("name","goddaehee");
		List<String> testList = new ArrayList<>();
		testList.add("a");
		testList.add("b");
		testList.add("c");
		mav.addObject("list",testList);
		return mav;
	}
}
