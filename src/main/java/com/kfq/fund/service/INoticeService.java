package com.kfq.fund.service;

import java.math.BigDecimal;
import java.util.List;

import com.kfq.fund.vo.NoticeVO;
import com.kfq.fund.vo.Pagination;

public interface INoticeService {
	public List<NoticeVO> getNoticeList(Pagination pagination);
	public NoticeVO getNoticeByNo(String no);
	public int getNoticeListCnt();
	public int insertNotice(NoticeVO notice);
}
