package com.kfq.fund.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kfq.fund.vo.ContestVO;
import com.kfq.fund.vo.FileVO;
import com.kfq.fund.vo.JoinVO;
import com.kfq.fund.vo.Pagination;

public interface IContestService {

	public String existContest(String email);
	public ContestVO existContestInfo(String email);
	public int insertlastContestid(String email);
	public List<FileVO> getFiles(int id);
	public FileVO getFile(int id);
	public List<ContestVO> getTop5(int search);
	public int listCnt(int num);
	public List<ContestVO> listProceeding(Pagination page);
	public List<ContestVO> listDecision(Pagination page);
	public List<ContestVO> listEndContest(Pagination page);
	public ContestVO ContestInfo(int id);
	public boolean iscontestfinsh(int id);
	public String whocontest(int id);
	public List<JoinVO> isworkexist(int id, String email);
	public int allworkCnt(int id);
	public List<JoinVO> showworks(int id, int startList,int listSize);
	public boolean jointitleCheck(String title);
	public List<ContestVO> showbenner(int num);
	//insert
	public void insertContest(ContestVO contest);
	public void insertContestFile(MultipartHttpServletRequest request,int contestnum);
	public void insertJoin(JoinVO join,MultipartFile mpf);
	
	public JSONObject insertJoinImage(MultipartFile file,int contestnum,String worktitle);
	
	//update
	public void updateContest(ContestVO contest);
	public void updateContestprize(ContestVO contest);
	public void payed(int id);
	public void viewincrease(int id);
	
	//delete
	public void deleteContest(int id);
}
