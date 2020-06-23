package com.kfq.fund.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kfq.fund.dao.IArticalDAO;
import com.kfq.fund.vo.ArticalVO;

@Service
public class ArticalServiceImpl implements IArticalService{
	@Autowired
	private IArticalDAO dao;
	
	public void setDao(IArticalDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<ArticalVO> selectArticalByCategory(String category) {
		return dao.selectArticalByCategory(category);
	}

}
