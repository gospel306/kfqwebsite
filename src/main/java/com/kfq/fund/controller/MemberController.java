package com.kfq.fund.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kfq.fund.service.IMemberService;
import com.kfq.fund.service.UserMailSendService;
import com.kfq.fund.vo.MemberVO;
import com.kfq.fund.vo.Pagination;

@Controller
public class MemberController {
	@Autowired
	private IMemberService member_service;
	
	@Autowired
	private UserMailSendService mailsender;
	
	public void setMemberService(IMemberService member_service) {
		this.member_service = member_service;
	}
	@RequestMapping(value = "select")
	public ModelAndView selectSignin() {
		return new ModelAndView("member/select");
	}
	@RequestMapping(value = "signin")
	public ModelAndView signin() {
		return new ModelAndView("member/email");
	}
	@RequestMapping(value = "insert.do", method = RequestMethod.POST)
	public ModelAndView insertMember(HttpServletRequest request) {
		String email = request.getParameter("email");
		String passwd = request.getParameter("passwd");
		String userclass = request.getParameter("userclass");
		String nickname = request.getParameter("nickname");
		member_service.insertMember(new MemberVO(email,passwd,userclass,nickname));
		mailsender.mailSendWithUserKey(email, request);
		return new ModelAndView("member/emailverify");
	}
	
	@RequestMapping(value = "loginCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public boolean loginMember(HttpServletRequest request,HttpSession session) {
		String email = request.getParameter("email");
		String passwd = request.getParameter("passwd");
		boolean result = member_service.loginCheck(new MemberVO(email,passwd), session);
		return result;
	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String url = request.getParameter("link");
		mv.setViewName("redirect:/"+url);
		return mv;
	}
	
	@RequestMapping(value = "logout.do")
	public ModelAndView logout(HttpServletRequest request,HttpSession session) {
		member_service.logout(session);
		String url = request.getParameter("link");
		ModelAndView mv = new ModelAndView("redirect:/"+url);
		return mv;
	}
	
	@RequestMapping(value = "/user/key_alter",method = RequestMethod.GET)
	public ModelAndView key_alterConfirm(HttpServletRequest request) {
		String email = request.getParameter("email");
		String userkey = request.getParameter("userkey");
		mailsender.alter_userKey_service(email, userkey);
		return new ModelAndView("");
	}
	
	//맴버 리스트
	@RequestMapping(value = "memberlist", method = RequestMethod.GET)
	public ModelAndView memberlist(HttpServletRequest request) {
		String orderOption = request.getParameter("orderOption");
		String sortOption = request.getParameter("sortOption");
		String searchOption = request.getParameter("searchOption");
		HashMap<String, String> map = new HashMap<>();
		if(searchOption == "DATE") {
			String startdate = request.getParameter("startdate");
			String enddate = request.getParameter("enddate");
			map.put("startdate", startdate);
			map.put("enddate", enddate);
		}else {
			String keyword = request.getParameter("keyword");
			map.put("keyword",keyword);
		}
		String pagenum = request.getParameter("pagenum");
		int page = 1;
		if(pagenum != null)
			page = Integer.parseInt(pagenum);
		Pagination pagination = new Pagination();
		int listCnt = member_service.getMemberlistCnt(map);
		pagination.pageInfo(page, listCnt);
		List<MemberVO> memberlist = member_service.listMember(orderOption, sortOption, pagination);
		ModelAndView mv = new ModelAndView("memberlist");
		mv.addObject("memberlist",memberlist);
		return mv;
	}
}
