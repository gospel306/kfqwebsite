package com.kfq.fund.dao;

import java.util.List;

import com.kfq.fund.vo.NoticeVO;
import com.kfq.fund.vo.Pagination;

public interface INoticeDAO {
	public List<NoticeVO> getNoticeList(Pagination pagination);
	public NoticeVO getNoticeByNo(String no);
	public int getNoticeListCnt();
	public int insertNotice(NoticeVO notice);
}
