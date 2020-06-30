package com.kfq.fund.service;

import javax.servlet.http.HttpSession;

import com.kfq.fund.vo.MemberVO;

public interface IMemberService {
	public void insertMember(MemberVO member);
	public boolean loginCheck(MemberVO member,HttpSession session);
	public MemberVO viewMember(MemberVO vo);
	public void logout(HttpSession session);
	public int updateUserkey(String email,String key);
}
