package com.kfq.fund.service;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kfq.fund.dao.IMemberDAO;
import com.kfq.fund.vo.MemberVO;
import com.kfq.fund.vo.Pagination;

@Service
public class MemberServiceImpl implements IMemberService {
	@Autowired
	private IMemberDAO dao;
	
	public void setDao(IMemberDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public void insertMember(MemberVO member) {
		dao.insertMember(member);
	}
	
	@Override
	public boolean loginCheck(MemberVO member,HttpSession session) {
		String name = dao.loginCheck(member);
		boolean result = name == null ? false : true;
		if(result) {
			MemberVO vo = viewMember(member);
			session.setAttribute("useremail",vo.getEmail());
			session.setAttribute("nickname", vo.getNickname());
		}
		return result;
	}
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return dao.viewMember(vo);
	}
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
	@Override
	public int updateUserkey(String email,String key) {
		return dao.updateUserkey(email,key);
	}

	@Override
	public void deleteMember(String email) {
		dao.deleteMember(email);
	}

	@Override
	public int getMemberlistCnt(HashMap<String, String> map) {
		return dao.getMemberlistCnt(map);
	}
	@Override
	public List<MemberVO> listMember(String orderOption, String sortOption, Pagination page) {
		return dao.listMember(orderOption, sortOption, page.getStartList(),page.getListSize());
	}


}
