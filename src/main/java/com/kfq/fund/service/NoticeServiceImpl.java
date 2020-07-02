package com.kfq.fund.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kfq.fund.dao.INoticeDAO;
import com.kfq.fund.vo.NoticeVO;
import com.kfq.fund.vo.Pagination;

@Service
public class NoticeServiceImpl implements INoticeServiceImpl {
	
	@Autowired
	private INoticeDAO dao;
	
	public void setDao(INoticeDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<NoticeVO> getNoticeList(Pagination pagination) {
		return dao.getNoticeList(pagination);
	}

	@Override
	public NoticeVO getNoticeByNo(String no) {
		return dao.getNoticeByNo(no);
	}

	@Override
	public int getNoticeListCnt() {
		return dao.getNoticeListCnt();
	}

	@Override
	public int insertNotice(NoticeVO notice) {
		return dao.insertNotice(notice);
	}

}
