package com.kfq.fund.service;


import java.security.MessageDigest;
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
		member.setPasswd(LockPassword(member.getPasswd()));
		dao.insertMember(member);
	}

	 
	private String LockPassword(String password) {
		StringBuffer hexString = new StringBuffer();
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest(password.getBytes("UTF-8"));
			for(int i = 0;i < hash.length;i++) {
				String hex = Integer.toHexString(0xff&hash[i]);
				if(hex.length() == 1)
					hexString.append('0');
				hexString.append(hex);
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
		return hexString.toString();
	}
	@Override
	public boolean loginCheck(MemberVO member,HttpSession session) {
		member.setPasswd(LockPassword(member.getPasswd()));
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
	public boolean memberCheck(MemberVO member) {
		return dao.loginCheck(member) == null ? false: true;
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
	public List<MemberVO> listMember(String searchOption, String sortOption, Pagination page) {
		return dao.listMember(searchOption, sortOption, page.getStartList(),page.getListSize());
	}

	@Override
	public boolean findexistEmail(String email) {
		return dao.findexistEmail(email)==1? true:false;
	}

	@Override
	public boolean findexistNickName(String nickname) {
		return dao.findexistNickName(nickname)==1?true:false;
	}

	@Override
	public void updateMember(MemberVO member) {
		dao.updateMember(member);
	}
}
