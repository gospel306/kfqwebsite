package com.kfq.fund.dao;

import com.kfq.fund.vo.MemberVO;

public interface IMemberDAO {
	public void insertMember(MemberVO member);
	public String loginCheck(MemberVO member);
	public MemberVO viewMember(MemberVO vo);
	
	//임의 userkey 생성후 입력
	public int GetKey(String email, String userkey);
	
	//이메일 인증후 userkey 업데이트
	public int updateUserkey(String email, String key);
	
	//비밀번호 찾기
	public int searchPassword(String email, String key);
	
	//회원 삭제
	public void deleteMember(String email);
}
