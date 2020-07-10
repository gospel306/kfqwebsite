package com.kfq.fund.dao;

import java.util.List;

import com.kfq.fund.vo.ContestVO;
import com.kfq.fund.vo.FileVO;
import com.kfq.fund.vo.JoinVO;
import com.kfq.fund.vo.Pagination;

public interface IContestDAO {
	public String existContest(String email);
	public ContestVO existContestInfo(String email);
	public int insertlastContestid(String email);
	public List<FileVO> getFiles(int id);
	public FileVO getFile(int id);
	public String ContestName(int id);
	public String ContestDirectory(int id);
	public List<ContestVO> getTop(Pagination page,int value);
	public int listCnt(int num);
	public List<ContestVO> listProceeding(Pagination page);
	public List<ContestVO> listDecision(Pagination page);
	public List<ContestVO> listEndContest(Pagination page);
	public ContestVO ContestInfo(int id);
	public String imgurl(int id);
	public int searchworknum(int contestid);
	public int iscontestfinsh(int id);
	public String whocontest(int id);
	public List<JoinVO> isworkexist(int id, String email);
	public int allworkCnt(int id);
	public List<JoinVO> showworks(int id, int startList,int listSize);
	public int jointitleCheck(String title);
	public List<ContestVO> showbenner();
	public List<ContestVO> showendbenner();
	public JoinVO searchwork(int id);
	//insert
	public void insertContest(ContestVO contest);
	public void insertContestFile(FileVO file);
	public void insertJoin(JoinVO join);
	//update
	public void updateContest(ContestVO contest);
	public void updateContestprize(ContestVO contest);
	public void updateWinner(int winner,String imgurl,int id);
	public void payed(int id);
	public void viewincrease(int id);
	//delete
	public void deleteContest(int id);
	public void deleteContestFile(int id);
}
