package com.kfq.fund.dao;

import com.kfq.fund.vo.ContestVO;

public interface IContestDAO {
	public int existContest(String email);
	public int insertContest(ContestVO contest);
}
