package com.kfq.fund.dao;

import java.util.List;

import com.kfq.fund.vo.ArticalVO;

public interface IArticalDAO {
	public List<ArticalVO> selectArticalByCategory(String category);
}
