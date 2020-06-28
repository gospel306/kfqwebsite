package com.kfq.fund.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kfq.fund.service.IMemberService;
import com.kfq.fund.vo.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private IMemberService member_service;
	
	public void setMemberService(IMemberService member_service) {
		this.member_service = member_service;
	}
	
	@RequestMapping(value = "insert.do", method = RequestMethod.POST)
	public ModelAndView insertMember(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String email = request.getParameter("email");
		String passwd = request.getParameter("passwd");
		String userclass = request.getParameter("userclass");
		String nickname = request.getParameter("nickname");
		
		MemberVO member = new MemberVO(email,passwd,userclass,nickname,"");
		return mv;
	}
}
