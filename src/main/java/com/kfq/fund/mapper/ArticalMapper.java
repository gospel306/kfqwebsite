package com.kfq.fund.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kfq.fund.vo.ArticalVO;

public interface ArticalMapper {
	public List<ArticalVO> selectArticalByCategory(@Param("art_category") String art_category);
}
