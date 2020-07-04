package com.kfq.fund.dao;

import java.util.List;

import com.kfq.fund.vo.ContestVO;
import com.kfq.fund.vo.FileVO;

public interface IContestDAO {
	public String existContest(String email);
	public ContestVO existContestInfo(String email);
	public int insertlastContestid(String email);
	public List<FileVO> getFiles(int id);
	//insert
	public void insertContest(ContestVO contest);
	public void insertContestFile(FileVO file);
	
	//update
	public void updateContest(ContestVO contest);
	
	//delete
	public void deleteContest(int id);
	public void deleteContestFile(int id);
}
