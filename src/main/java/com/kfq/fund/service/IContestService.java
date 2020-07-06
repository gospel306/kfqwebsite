package com.kfq.fund.service;

import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kfq.fund.vo.ContestVO;
import com.kfq.fund.vo.FileVO;
import com.kfq.fund.vo.JoinVO;

public interface IContestService {

	public String existContest(String email);
	public ContestVO existContestInfo(String email);
	public int insertlastContestid(String email);
	public List<FileVO> getFiles(int id);
	public List<ContestVO> getTop5(String search);
	//insert
	public void insertContest(ContestVO contest);
	public void insertContestFile(MultipartHttpServletRequest request,int contestnum);
	public void insertJoin(JoinVO join);
	
	public JSONObject insertJoinImage(MultipartFile file,int contestnum);
	
	//update
	public void updateContest(ContestVO contest);
	
	//delete
	public void deleteContest(int id);
}
