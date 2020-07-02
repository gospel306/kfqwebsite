package com.kfq.fund.service;

import com.kfq.fund.vo.ContestVO;

public interface IContestService {
	public int existContest(String email);
	public int insertContest(ContestVO contest);
}
