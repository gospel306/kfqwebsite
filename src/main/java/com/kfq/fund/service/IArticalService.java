package com.kfq.fund.service;

import java.util.List;

import com.kfq.fund.vo.ArticalVO;

public interface IArticalService {
	public List<ArticalVO> selectArticalByCategory(String category);
}
