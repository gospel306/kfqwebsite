package com.kfq.fund.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kfq.fund.service.IContestService;
import com.kfq.fund.service.IMemberService;
import com.kfq.fund.vo.ContestVO;
import com.kfq.fund.vo.FileVO;
import com.kfq.fund.vo.JoinVO;
import com.kfq.fund.vo.MemberVO;
import com.kfq.fund.vo.Pagination;

@Controller
public class ContestController {
	@Autowired
	private IContestService contest_service;
	
	@Autowired
	private IMemberService memservice;
	
	public void setContestService(IContestService contest_service,IMemberService memservice) {
		this.contest_service = contest_service;
		this.memservice = memservice;
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
	
	@RequestMapping(value = {"contestlist/{listtype}","contestlist/{listtype}/p-{idx}"})
	public ModelAndView contestlist(@PathVariable String listtype, @PathVariable(required = false) String idx) {
		ModelAndView mv = new ModelAndView("contest/listcontest");
		mv.addObject("listtype",listtype);
		int pagenum = 1, listCnt;
		if(idx != null)
			pagenum = Integer.parseInt(idx);
		Pagination page = new Pagination();
		List<ContestVO> list = new ArrayList<>();
		if(!listtype.equals("endcontest")) {
			Pagination top = new Pagination();
			top.pageInfo(1, 5);
			top.setListSize(5);
			mv.addObject("wins",contest_service.getTop(top,1));
			mv.addObject("costs",contest_service.getTop(top,2));
			mv.addObject("lasts",contest_service.getTop(top,3));
			mv.addObject("benners",contest_service.showbenner(10));
			if(listtype.equals("proceeding")) {
				listCnt = contest_service.listCnt(1);
				page.pageInfo(pagenum, listCnt);
				list = contest_service.listProceeding(page);
			}else {
				listCnt = contest_service.listCnt(2);
				page.pageInfo(pagenum, listCnt);
				list = contest_service.listDecision(page);
			}
		}else {
			listCnt = contest_service.listCnt(3);
			page.pageInfo(pagenum, listCnt);
			list = contest_service.listEndContest(page);
		}
		mv.addObject("pagination",page);
		mv.addObject("lists",list);
		return mv;
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
	public ModelAndView contestResult(@PathVariable String contesttype,HttpServletRequest request,HttpSession session) {
		int show = Integer.parseInt(request.getParameter("show"));//상단 옵션
		int highlight = Integer.parseInt(request.getParameter("highlight"));//하이라이트 옵션
		int benner = Integer.parseInt(request.getParameter("benner"));//배너 옵션
		int week = Integer.parseInt(request.getParameter("enddate"));//기간
		int firstprize = Integer.parseInt(request.getParameter("firstprize"));//1등
		int secondprize = Integer.parseInt(request.getParameter("secondprize"));//2등
		int thirdprize = Integer.parseInt(request.getParameter("thirdprize"));//3등
		int enroll_price = Integer.parseInt(request.getParameter("enroll_price"));//등록비
		int total_price = Integer.parseInt(request.getParameter("total_price"));//전체 비용
		int tax_price = Integer.parseInt(request.getParameter("tax_price"));
		int fullprize = Integer.parseInt(request.getParameter("fullprize"));
		String paytype = request.getParameter("paytype");
		ContestVO contest = contest_service.existContestInfo((String) session.getAttribute("useremail"));
		contest.setShow(show != 0?1:0);
		contest.setHighlight(highlight!= 0?1:0);
		contest.setBenner(benner!= 0?1:0);
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, 7*week);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		contest.setEnddate(java.sql.Date.valueOf(sdf.format(cal.getTime())));
		System.out.println(contest.getEnddate());
		contest.setFirstprize(firstprize);
		contest.setSecondprize(secondprize);
		contest.setThirdprize(thirdprize);
		contest.setFullprize(fullprize != 0?1:0);
		contest.setPaytype(paytype);
		contest_service.updateContestprize(contest);
		
		String ctype = contype(contesttype);
		ModelAndView mv = new ModelAndView("contest/result");
		mv.addObject("firstprize",firstprize);
		mv.addObject("secondprize",secondprize);
		mv.addObject("thirdprize",thirdprize);
		mv.addObject("tax_price",tax_price);
		mv.addObject("ctype",ctype);
		mv.addObject("enroll",enroll_price);
		mv.addObject("total",total_price);
		mv.addObject("show",show);
		mv.addObject("highlight",highlight);
		mv.addObject("benner",benner);
		mv.addObject("paytype",paytype);
		return mv;//step4.html
	}
	private String contype(String contesttype) {
		String ctype = "";
		switch(contesttype) {
		case "logo":
			ctype = "로고 디자인 |";
			break;
		case "logo&bizcard":
			ctype = "로고 + 명함 |";
			break;
		case "logo&sign":
			ctype = "로고 + 간판 |";
			break;
		case "branding":
			ctype = "브랜딩 SET |";
			break;
		case "idea":
			ctype = "네이밍/아이디어 |";
			break;
		case "designpackage":
			ctype = "페키징 디자인 |";
			break;
		case "labeldesign":
			ctype = "라벨 디자인 |";
			break;
		case "productdesign":
			ctype = "제품 디자인 |";
			break;
		case "poster":
			ctype = "포스터/전단지 |";
			break;
		case "brochure":
			ctype = "브로셔/리플렛 |";
			break;
		case "bizcard":
			ctype = "명함/봉투 |";
			break;
		case "homepage":
			ctype = "웹사이트 |";
			break;
		case "app":
			ctype = "모바일 앱 |";
			break;
		case "landingpage":
			ctype = "상세 페이지 |";
			break;
		case "benner":
			ctype = "배너광고 디자인 |";
			break;
		case "character":
			ctype = "캐릭터 디자인 |";
			break;
		case "illust":
			ctype = "일러스트 |";
			break;
		default:
			ctype = "기타 디자인 |";
		}
		return ctype;
	}
	
	@RequestMapping(value = "deleteContest.do")
	@ResponseBody
	public void deleteContest(HttpSession session) {
		ContestVO contest = contest_service.existContestInfo((String) session.getAttribute("useremail"));
		contest_service.deleteContest(contest.getId());
	}
	@RequestMapping(value = "contest/list")
	public ModelAndView showContestList() {
		return new ModelAndView("contest/list");//ingcontest.html
	}
	@RequestMapping(value = {"contest/{contestidx}","contest/{contestidx}/p-{idx}"})
	public ModelAndView showContest(HttpServletRequest request,HttpSession session,@PathVariable String contestidx,@PathVariable(required=false) String idx) {
		ModelAndView mv = new ModelAndView();
		ContestVO contest = contest_service.ContestInfo(Integer.parseInt(contestidx));
		mv.addObject("contest",contest);
		if(contest_service.iscontestfinsh(Integer.parseInt(contestidx))) {
			mv.addObject("member",memservice.findMember(contest_service.searchwork(contest.getWinner()).getEmail()));
			Pagination page = new Pagination();
			int index = 1;
			if(idx != null)
				Integer.parseInt(idx);
			int listCnt = contest_service.allworkCnt(Integer.parseInt(contestidx));
			page.pageInfo(index, listCnt);
			List<JoinVO> works = contest_service.showworks(Integer.parseInt(contestidx), page.getStartList(), page.getListSize());
			mv.addObject("works",works);
			mv.setViewName("contest/contest_done");
		}else {
			mv.addObject("files",contest_service.getFiles(Integer.parseInt(contestidx)));
			mv.addObject("idx",contestidx);
			String useremail = (String) session.getAttribute("useremail");
			if(useremail!=null) {
				mv.setViewName("contest/contest_done");//끝남
				List<JoinVO> work = contest_service.isworkexist(Integer.parseInt(contestidx), useremail);
				if(useremail.equals(contest_service.whocontest(Integer.parseInt(contestidx)))){
					Pagination page = new Pagination();
					int listCnt = contest_service.allworkCnt(Integer.parseInt(contestidx));
					int index = 1;
					if(idx != null)
						index = Integer.parseInt(idx);
					System.out.println(listCnt);
					page.pageInfo(index, listCnt);
					work = contest_service.showworks(Integer.parseInt(contestidx), page.getStartList(), page.getListSize());
					mv.addObject("works",work);
					mv.addObject("pagination",page);
				}else if(work.size() != 0) {
					System.out.println(contest.getDay());
					if(contest.getDay() < 0)
						mv.addObject("works",work);
					else {
						contest_service.viewincrease(Integer.parseInt(contestidx));
						mv.addObject("workexist",true);
						mv.setViewName("contest/contestbrief");
					}
				}else {
					contest_service.viewincrease(Integer.parseInt(contestidx));
					mv.addObject("workexist",false);
					mv.setViewName("contest/contestbrief");
				}
			}else {
				contest_service.viewincrease(Integer.parseInt(contestidx));
				mv.addObject("workexist",false);
				mv.setViewName("contest/contestbrief");//참가 여부
			}
		}
		return mv;
	}
	@RequestMapping(value="titleCheck.do",method=RequestMethod.POST)
	@ResponseBody
	public String existTitle(HttpServletRequest request) {
		boolean result = contest_service.jointitleCheck((String)request.getParameter("title"));
		if(result) {
			return "false";
		}
		return "true";
	}
	@RequestMapping(value = "download/fileName={filenum}")
	public ResponseEntity<Resource> downloadfile(@PathVariable String filenum, HttpServletRequest request){
		FileVO file = contest_service.getFile(Integer.parseInt(filenum));
		if(file != null) {
			String filepath = "C://kfqproject"+file.getFileurl()+file.getFilename();
			System.out.println(filepath);
			File target = new File(filepath);
			HttpHeaders header = new HttpHeaders();
			Resource rs = null;
			if(target.exists()) {
				try {
					String mimeType = Files.probeContentType(Paths.get(target.getAbsolutePath()));
					if(mimeType == null)
						mimeType = "octet-stream";
					rs = new UrlResource(target.toURI());
					header.add(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=\""+rs.getFilename()+"\"");
					header.setCacheControl("no-cache");
					header.setContentType(MediaType.parseMediaType(mimeType));
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return new ResponseEntity<>(rs,header,HttpStatus.OK);
		}
		return null;
	}
	@RequestMapping(value = "contest/{contestidx}/join")
	public ModelAndView joinContest(@PathVariable String contestidx) {
		ModelAndView mv = new ModelAndView("join/join");
		mv.addObject("contest",contest_service.ContestInfo(Integer.parseInt(contestidx)));
		return mv;//작성전
	}
	@RequestMapping(value = "contest/{contestidx}/joininfo")
	public ModelAndView joininfoContest(@PathVariable String contestidx) {
		ModelAndView mv = new ModelAndView("join/joininfo");
		mv.addObject("contest",contest_service.ContestInfo(Integer.parseInt(contestidx)));
		return mv;//작품 작성
	}
	@RequestMapping(value = "contest/{contestidx}/viewjoininfo", method=RequestMethod.POST)
	public ModelAndView insertjoininfo(@RequestParam("file") MultipartFile file,HttpServletRequest request,@PathVariable String contestidx,HttpSession session) {
		String email = (String) session.getAttribute("useremail");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		contest_service.insertJoin(new JoinVO(Integer.parseInt(contestidx),email,title,content,""),file);
		ModelAndView mv = new ModelAndView("redirect:/contest/"+contestidx);
		return mv;//
	}
	@RequestMapping(value = "test/{contestidx}")
	public ModelAndView test(@PathVariable String contestidx) {
		ModelAndView mv = new ModelAndView("contest/contest_done");
		mv.addObject("contest",contest_service.ContestInfo(Integer.parseInt(contestidx)));
		int cnt = contest_service.allworkCnt(Integer.parseInt(contestidx));
		Pagination page = new Pagination();
		page.pageInfo(1,cnt);
		mv.addObject("works",contest_service.showworks(Integer.parseInt(contestidx), page.getStartList(), page.getListSize()));
		return mv;
	}
	@RequestMapping(value = "payed")
	@ResponseBody
	public HashMap<String,Object> payed(HttpSession session) {
		ContestVO contest = contest_service.existContestInfo((String) session.getAttribute("useremail"));
		HashMap<String,Object> map = new HashMap<>();
		if(contest != null) {
			map.put("idx", contest.getId());
			contest_service.payed(contest.getId());
			map.put("result", "success");
			return map;
		}
		map.put("result","fail");
		return map;
	}
	@RequestMapping(value = "contest/{contestidx}/uploadImageJoin", method=RequestMethod.POST)
	@ResponseBody
	public JSONObject uploadImageJoin(@RequestParam("file") MultipartFile file,@PathVariable int contestidx,HttpServletRequest request) {
		System.out.println("success");
		return contest_service.insertJoinImage(file, contestidx, request.getParameter("title"));
	}
	@RequestMapping(value = "showwinner.do", method=RequestMethod.POST)
	@ResponseBody
	public JSONObject showwinner(HttpServletRequest request,HttpSession session) {
		JSONObject jsonobject = new JSONObject();
		int id = Integer.parseInt(request.getParameter("id"));
		JoinVO work = contest_service.searchwork(id);
		MemberVO member = memservice.findMember(work.getEmail());
		String requester = contest_service.whocontest(work.getContest_id());
		if(session.getAttribute("useremail") != null&&session.getAttribute("useremail").equals(requester))
			jsonobject.put("requester",true);
		else
			jsonobject.put("requester", false);
		jsonobject.put("work", work);
		jsonobject.put("member",member);
		System.out.println(jsonobject);
		return jsonobject;
	}
	@RequestMapping(value="makewinner.do")
	public ModelAndView makewinner(HttpServletRequest request) {
		int contestid = Integer.parseInt(request.getParameter("contestid"));
		int workid = Integer.parseInt(request.getParameter("workid"));
		contest_service.updateWinner(workid, contestid);
		ModelAndView mv = new ModelAndView("redirect:/test/"+contestid);
		return mv;
	}
}
