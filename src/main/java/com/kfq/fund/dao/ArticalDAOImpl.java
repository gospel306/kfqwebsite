package com.kfq.fund.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kfq.fund.mapper.ArticalMapper;
import com.kfq.fund.vo.ArticalVO;

@Repository
public class ArticalDAOImpl implements IArticalDAO{
	@Autowired
	private SqlSessionTemplate template;
	
	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	
	@Override
	public List<ArticalVO> selectArticalByCategory(String art_category) {
		ArticalMapper mapper = template.getMapper(ArticalMapper.class);
		return mapper.selectArticalByCategory(art_category);
	}
}
