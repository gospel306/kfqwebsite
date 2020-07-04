package com.kfq.fund.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kfq.fund.vo.ContestVO;
import com.kfq.fund.vo.FileVO;

public interface IContestService {

	public String existContest(String email);
	public ContestVO existContestInfo(String email);
	public int insertlastContestid(String email);
	public List<FileVO> getFiles(int id);
	
	//insert
	public void insertContest(ContestVO contest);
	public void insertContestFile(MultipartHttpServletRequest request,int contestnum);
	
	//update
	public void updateContest(ContestVO contest);
	
	//delete
	public void deleteContest(int id);
}
