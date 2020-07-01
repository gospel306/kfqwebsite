package com.kfq.fund.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.kfq.fund.vo.MemberVO;
import com.kfq.fund.vo.Pagination;

public interface IMemberService {
	public void insertMember(MemberVO member);
	public boolean loginCheck(MemberVO member,HttpSession session);
	public MemberVO viewMember(MemberVO vo);
	public void logout(HttpSession session);
	public int updateUserkey(String email,String key);
	public int getMemberlistCnt(HashMap<String, String> map);
	public List<MemberVO> listMember(String orderOption,String sortOption, Pagination page);
	public void deleteMember(String email);
}
