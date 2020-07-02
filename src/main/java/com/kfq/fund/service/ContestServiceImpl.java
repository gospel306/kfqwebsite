package com.kfq.fund.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kfq.fund.dao.IContestDAO;
import com.kfq.fund.vo.ContestVO;

@Service
public class ContestServiceImpl implements IContestService{
	@Autowired
	private IContestDAO dao;
	
	public void setDao(IContestDAO dao) {
		this.dao = dao;
	}
	@Override
	public int existContest(String email) {
		return dao.existContest(email);
	}
	@Override
	public int insertContest(ContestVO contest) {
		return dao.insertContest(contest);
	}
	
}
