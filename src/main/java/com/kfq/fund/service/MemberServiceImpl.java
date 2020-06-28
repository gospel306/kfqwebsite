package com.kfq.fund.service;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

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
	
	
	
	//email random method
	private String init() {
		Random ran = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;
		do {
			num = ran.nextInt(75) + 48;
			if((num >= 48 && num <= 57)||(num >= 65 && num <= 90) || (num >= 97 && num <= 122))
				sb.append((char) num);
			else {
				continue;
			}
		}while(sb.length() < size);
		if(lowerCheck) 
			return sb.toString().toLowerCase();
		return sb.toString();
	}
	private boolean lowerCheck;
	private int size;
	
	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}
public void mailSendWithUserKey(String e_mail, String user_id, HttpServletRequest request) {
		
		String key = getKey(false, 20);
		dao = sqlSession.getMapper(IMemberDAO.class);
		/*
		 * dao.GetKey(user_id, key); MimeMessage mail = mailSender.createMimeMessage();
		 * String htmlStr = "<h2>안녕하세요 MS :p 민수르~ 입니다!</h2><br><br>" + "<h3>" + user_id
		 * + "님</h3>" + "<p>인증하기 버튼을 누르시면 로그인을 하실 수 있습니다 : " +
		 * "<a href='http://localhost:8080" + request.getContextPath() +
		 * "/user/key_alter?user_id="+ user_id +"&user_key="+key+"'>인증하기</a></p>" +
		 * "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)"; try {
		 * mail.setSubject("[본인인증] MS :p 민수르님의 인증메일입니다", "utf-8"); mail.setText(htmlStr,
		 * "utf-8", "html"); mail.addRecipient(RecipientType.TO, new
		 * InternetAddress(e_mail)); mailSender.send(mail); } catch (MessagingException
		 * e) { e.printStackTrace(); }
		 */
		
	}
}
