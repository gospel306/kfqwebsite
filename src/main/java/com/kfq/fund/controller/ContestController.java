package com.kfq.fund.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kfq.fund.service.IContestService;
import com.kfq.fund.vo.ContestVO;
import com.kfq.fund.vo.FileVO;

@Controller
public class ContestController {
	@Autowired
	private IContestService contest_service;
	
	public void setContestService(IContestService contest_service) {
		this.contest_service = contest_service;
	}
	
	@RequestMapping(value = "existContest.do")
	@ResponseBody
	public String existContest(HttpSession session) {
		if(session.getAttribute("useremail") == null)
			return "false";
		
		String result = contest_service.existContest((String) session.getAttribute("useremail"));
		if(result == null)
			result = "false";
		return result;
	}
	
	@RequestMapping(value = "contestlist")
	public ModelAndView contestlist() {
		return new ModelAndView("contestlist");
	}
	
	@RequestMapping(value = "launch")
	public ModelAndView launchContest() {
		return new ModelAndView("contest/category");
	}
	
	@RequestMapping(value = "launch/{contesttype}")
	public ModelAndView contestDetail(@PathVariable String contesttype,HttpSession session,HttpServletRequest request) {
		String link = request.getParameter("link");
		ModelAndView mv = new ModelAndView();
		mv.addObject("contesttype",contesttype);
		if(session.getAttribute("useremail") == null)
			mv.setViewName("member/select");
		else
			mv.setViewName("contest/privacy");
		return mv;
	}
	
	@RequestMapping(value ="launch/{contesttype}/briefing")
	public ModelAndView briefing(@PathVariable String contesttype,HttpSession session) {
		ContestVO contest = contest_service.existContestInfo((String) session.getAttribute("useremail"));
		ModelAndView mv = new ModelAndView("contest/briefing");
		if(contest != null) {
			mv.addObject("contest",contest);
			List<FileVO> filelist = contest_service.getFiles(contest.getId());
			if(filelist != null)
				mv.addObject("files",filelist);
		}
		return mv;
	}
	
	@RequestMapping(value= "briefing.do")
	@ResponseBody
	public boolean insertbriefing(MultipartHttpServletRequest request,HttpSession session) {
		ContestVO contest = contest_service.existContestInfo((String) session.getAttribute("useremail"));
		String title = request.getParameter("title");
		String contesttype= request.getParameter("contesttype");
		String company = request.getParameter("company");
		String service = request.getParameter("service");
		String sector = request.getParameter("sector");
		String idea = request.getParameter("idea");
		String briefing = request.getParameter("briefing");
		if(contest != null) {
			contest.setTitle(title);
			contest.setContesttype(contesttype);
			contest.setCompany(company);
			contest.setServiceinfo(service);
			contest.setSector(sector);
			contest.setIdea(idea);
			contest.setBriefing(briefing);
			contest_service.updateContest(contest);
			
		}else{
			contest_service.insertContest(new ContestVO((String) session.getAttribute("useremail"), title, contesttype,company, service, sector, idea, briefing));
		}
		int check = contest_service.insertlastContestid((String) session.getAttribute("useremail"));
		contest_service.insertContestFile(request, check);
		
		return true;
	}
	
	@RequestMapping(value ="launch/{contesttype}/price", method=RequestMethod.GET)
	public ModelAndView contestprice(@PathVariable String contesttype,HttpServletRequest request,HttpSession session) {
		return new ModelAndView("contest/estimate");
	}
	@RequestMapping(value ="launch/{contesttype}/result")
	public ModelAndView contestResult(@PathVariable String contesttype,HttpServletRequest request) {
		return new ModelAndView("contest/result");
	}
	
	@RequestMapping(value = "deleteContest.do")
	@ResponseBody
	public void deleteContest(HttpSession session) {
		ContestVO contest = contest_service.existContestInfo((String) session.getAttribute("useremail"));
		contest_service.deleteContest(contest.getId());
	}
}
