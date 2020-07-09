package com.kfq.fund.dao;

import java.util.HashMap;
import java.util.List;

import com.kfq.fund.vo.MemberVO;

public interface IMemberDAO {
	public void insertMember(MemberVO member);
	public String loginCheck(MemberVO member);
	public MemberVO viewMember(MemberVO vo);
	public int findexistEmail(String email);
	public int findexistNickName(String nickname);
	public MemberVO findMember(String email);
	//임의 userkey 생성후 입력
	public int GetKey(String email, String userkey);
	public String checkuserclass(String email);
	//이메일 인증후 userkey 업데이트
	public int updateUserkey(String email, String key);
	public void updateMember(MemberVO member);
	//비밀번호 찾기
	public int searchPassword(String email, String key);
	//회원인원 갯수
	public int getMemberlistCnt(HashMap<String, String> map);
	//회원리스트
	public List<MemberVO> listMember(String searchOption,String sortOption, int startlist,int listsize); 
	
	//회원 삭제
	public void deleteMember(String email);
}
