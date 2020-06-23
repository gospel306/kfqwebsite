package com.kfq.fund.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public ModelAndView selectArticalByCategory(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<ArticalVO> articals = new ArrayList<ArticalVO>();
		String category = request.getParameter("category");
		articals = artical_service.selectArticalByCategory(category);
		mv.addObject("articals",articals);
		mv.addObject("category",category);
		mv.setViewName("notice");
		return mv;
	}
	
}
