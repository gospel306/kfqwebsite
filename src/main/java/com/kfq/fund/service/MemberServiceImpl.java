package com.kfq.fund.service;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Service;

import com.kfq.fund.dao.IMemberDAO;
import com.kfq.fund.vo.MemberVO;

@Service
public class MemberServiceImpl implements IMemberService {
	@Autowired
	private IMemberDAO dao;
	private SqlSessionTemplate sqlSession;
	private MailSender mailSender;
	
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

}
