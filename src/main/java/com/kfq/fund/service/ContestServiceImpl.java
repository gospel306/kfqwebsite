package com.kfq.fund.service;

import java.io.File;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kfq.fund.dao.IContestDAO;
import com.kfq.fund.dao.IMemberDAO;
import com.kfq.fund.vo.ContestVO;
import com.kfq.fund.vo.FileVO;
import com.kfq.fund.vo.JoinVO;
import com.kfq.fund.vo.Pagination;

@Service
public class ContestServiceImpl implements IContestService{
	@Autowired
	private IContestDAO dao;
	@Autowired
	private IMemberDAO memdao;
	public void setmemDao(IMemberDAO dao) {
		this.memdao = dao;
	}
	public void setDao(IContestDAO dao) {
		this.dao = dao;
	}
	@Override
	public String existContest(String email) {
		return dao.existContest(email);
	}
	@Override
	public void insertContest(ContestVO contest) {
		String imgurl = memdao.findMember(contest.getMemberemail()).getImgurl();
		if(imgurl != null)
			contest.setImgurl(imgurl);
		dao.insertContest(contest);
	}
	@Override
	public void insertContestFile(MultipartHttpServletRequest request,int contestnum) {
		Iterator<String> itr = request.getFileNames();
		String title = request.getParameter("title");
		makedirectory("C://kfqproject/contest/"+title,contestnum);
		if(itr.hasNext()) {
			MultipartFile mpf = request.getFile(itr.next());
			try {
			saveFile(mpf,title,contestnum);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	

	private void deleteAllFile(String dir,int id) {
		File file = new File(dir);
		File[] fileList = file.listFiles();
		for(int i = 0;i <fileList.length;i++) {
			fileList[i].delete();
		}
		dao.deleteContestFile(id);
	}
	@Override
	public int insertlastContestid(String email) {
		return dao.insertlastContestid(email);
	}
	private boolean saveFile(MultipartFile mpf,String title,int contestnum) throws Exception{
		String fileName = mpf.getOriginalFilename();
		String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
		File destinationFile;
		String destinationFileName;
		String fileUrl = "C://kfqproject/contest/"+title+"/";
		String url = "/contest/"+title+"/";
		do {
			destinationFileName = RandomStringUtils.randomAlphabetic(32)+"."+fileNameExtension;
			destinationFile = new File(fileUrl+destinationFileName);
		}while(destinationFile.exists());
		destinationFile.getParentFile().mkdirs();
		mpf.transferTo(destinationFile);
		FileVO file = new FileVO();
		file.setBno(contestnum);
		file.setFilename(destinationFileName);
		file.setFileOriName(fileName);
		file.setFileurl(url);
		dao.insertContestFile(file);
		return true;
	}
	private void makedirectory(String dir,int id) {
		File directory = new File(dir);
		if(!directory.exists()) {
			try {
				directory.mkdirs();
			} catch (Exception e) {
				e.getStackTrace();
			}
		}else {
			deleteAllFile(dir,id);
		}
	}
	@Override
	public ContestVO existContestInfo(String email) {
		return dao.existContestInfo(email);
	}
	@Override
	public void updateContest(ContestVO contest) {
		dao.updateContest(contest);
	}
	@Override
	public void deleteContest(int id) {
		dao.deleteContest(id);
	}
	@Override
	public List<FileVO> getFiles(int id) {
		return dao.getFiles(id);
	}
	@Override
	public JSONObject insertJoinImage(MultipartFile mpf, int contestnum,String worktitle) {
		JSONObject jsonobject = new JSONObject();
		String title = dao.ContestName(contestnum);
		try {
			String destinationFileName = savejoinimage(mpf,title,worktitle);
			jsonobject.put("url", "/join/"+title+"/"+worktitle+"/"+destinationFileName);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsonobject;
	}
	private String savejoinimage(MultipartFile mpf, String title,String worktitle) throws Exception{	
		String fileroot = "C://kfqproject/join/"+title+"/"+worktitle+"/";
		String originalFileName = mpf.getOriginalFilename();
		String extension = FilenameUtils.getExtension(originalFileName).toLowerCase();
		File destinationFile;
		String destinationFileName;
		
		
		do {
			destinationFileName = RandomStringUtils.randomAlphabetic(32)+"."+extension;
			destinationFile = new File(fileroot+destinationFileName);
		}while(destinationFile.exists());
		destinationFile.getParentFile().mkdirs();
		mpf.transferTo(destinationFile);
		return destinationFileName;
	}
	@Override
	public void insertJoin(JoinVO join,MultipartFile mpf) {
		String imageurl = "";
		String title = dao.ContestName(join.getContest_id());
		try {
			imageurl = savejoinimage(mpf, title,join.getTitle());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		join.setThumbnailurl(imageurl);
		dao.insertJoin(join);//이미지 일부 삭제
	}
	@Override
	public List<ContestVO> getTop5(int search) {
		return dao.getTop5(search);
	}
	@Override
	public int listCnt(int num) {
		return dao.listCnt(num);
	}
	@Override
	public List<ContestVO> listProceeding(Pagination page) {
		List<ContestVO> list = dao.listProceeding(page);
		for(int i = 0;i < list.size();i++) {
			String contesttype=list.get(i).getContesttype();	
			list.get(i).setImgurl(imgurl(contesttype));
			list.get(i).setContesttype(contesttype(contesttype));
			list.get(i).setPeople(dao.searchworknum(list.get(i).getId()));
		}
		return list;
	}
	@Override
	public List<ContestVO> listDecision(Pagination page) {
		Calendar cal = Calendar.getInstance();
 		List<ContestVO> list = dao.listDecision(page);
		for(int i = 0;i < list.size();i++) {
			cal.setTime(list.get(i).getEnddate());
			cal.add(Calendar.DATE, 7);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			list.get(i).setEnddate(java.sql.Date.valueOf(sdf.format(cal.getTime())));
			String contesttype=list.get(i).getContesttype();
			list.get(i).setImgurl(imgurl(contesttype));
			list.get(i).setContesttype(contesttype(contesttype));
			list.get(i).setPeople(dao.searchworknum(list.get(i).getId()));
		}
		return list;
	}
	@Override
	public List<ContestVO> listEndContest(Pagination page) {
		List<ContestVO> list = dao.listEndContest(page);
		for(int i = 0;i < list.size();i++) {
			list.get(i).setImgurl(dao.imgurl(list.get(i).getId()));
			String contesttype=list.get(i).getContesttype();
			list.get(i).setContesttype(contesttype(contesttype));
			System.out.println(list.get(i).getFullprize());
			list.get(i).setPeople(dao.searchworknum(list.get(i).getId()));
		}
		return list;
	}
	
	private String imgurl(String contesttype) {
		if(contesttype.contains("logo")||contesttype.equals("branding"))
			return "resource/img/default/logo.png";
		else if(contesttype.equals("idea"))
			return "resource/img/default/idea.png";
		else if(contesttype.equals("designpackage")||contesttype.equals("labeldesign")||contesttype.equals("productdesign"))
			return "resource/img/default/package.png";
		else if(contesttype.equals("poster")||contesttype.equals("brochure")||contesttype.equals("bizcard"))
			return "resource/img/default/print.png";
		else if(contesttype.equals("homepage")||contesttype.equals("app")||contesttype.equals("landingpage")||contesttype.equals("benner"))
			return "resource/img/default/web.png";
		else
			return "resource/img/default/etc.png";
	}
	private String contesttype(String contesttype) {
		switch(contesttype) {
		case "logo":
			return "로고 디자인 |";
		case "logo&bizcard":
			return "로고 + 명함 |";
		case "logo&sign":
			return "로고 + 간판 |";
		case "branding":
			return "브랜딩 SET |";
		case "idea":
			return "네이밍/아이디어 |";
		case "designpackage":
			return "페키징 디자인 |";
		case "labeldesign":
			return "라벨 디자인 |";
		case "productdesign":
			return "제품 디자인 |";
		case "poster":
			return "포스터/전단지 |";
		case "brochure":
			return "브로셔/리플렛 |";
		case "bizcard":
			return "명함/봉투 |";
		case "homepage":
			return "웹사이트 |";
		case "app":
			return "모바일 앱 |";
		case "landingpage":
			return "상세 페이지 |";
		case "benner":
			return "배너광고 디자인 |";
		case "character":
			return "캐릭터 디자인 |";
		case "illust":
			return "일러스트 |";
		default:
			return "기타 디자인 |";
		}
	}
	@Override
	public void updateContestprize(ContestVO contest) {
		dao.updateContestprize(contest);
	}
	@Override
	public void payed(int id) {
		dao.payed(id);
	}
	@Override
	public boolean iscontestfinsh(int id) {
		return dao.iscontestfinsh(id) == 0? false:true;
	}
	@Override
	public String whocontest(int id) {
		return dao.whocontest(id);
	}
	@Override
	public FileVO getFile(int id) {
		return dao.getFile(id);
	}
	@Override
	public ContestVO ContestInfo(int id) {
		ContestVO contest = dao.ContestInfo(id);
		contest.setImgurl(dao.imgurl(contest.getId()));
		String contesttype=contest.getContesttype();
		if(contest.getImgurl() == null)
			contest.setImgurl(imgurl(contesttype));
		contest.setContesttype(contesttype(contesttype));
		return contest;
	}
	@Override
	public void viewincrease(int id) {
		dao.viewincrease(id);
	}
	@Override
	public List<JoinVO> isworkexist(int id, String email) {
		return dao.isworkexist(id, email);
	}
	@Override
	public int allworkCnt(int id) {
		return dao.allworkCnt(id);
	}
	@Override
	public List<JoinVO> showworks(int id, int startList,int listSize){
		String name = dao.ContestName(id);
		List<JoinVO> list = dao.showworks(id, startList, listSize);
		String root = "/contest/"+ name+"/";
		for(int i = 0;i < list.size();i++)
			list.get(i).setThumbnailurl(root+list.get(i).getThumbnailurl());
		
		return list;
	}
	@Override
	public boolean jointitleCheck(String title) {
		return dao.jointitleCheck(title) == 0?false:true;
	}
	@Override
	public List<ContestVO> showbenner(int num) {
		List<ContestVO> list = dao.showbenner();
		List<ContestVO> showlist = new ArrayList<>();
		int[] a = new int[num];
		Random r = new Random();
		out:
		for(int i=0;i < num;i++) {
			a[i] = r.nextInt(list.size());
			for(int j = 0;j < i;j++)
				if(a[i] == a[j]) {
					i--;
					continue out;
				}
			showlist.add(list.get(a[i]));
			if(showlist.get(i).getImgurl() == null) {
				showlist.get(i).setImgurl(imgurl(showlist.get(i).getContesttype()));
			}
		}
		return showlist;
	}
}
