package com.kfq.fund.service;

import java.net.Inet4Address;
import java.net.UnknownHostException;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.kfq.fund.dao.IMemberDAO;

@Service
public class UserMailSendService {
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private IMemberDAO dao;
	
	private String init() {
		Random rand = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;
		do {
			num = rand.nextInt(75) + 48;
			if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
				sb.append((char) num);
			} else {
				continue;
			}

		} while (sb.length() < size);
		if (lowerCheck) {
			return sb.toString().toLowerCase();
		}
		return sb.toString();	
	}
	private boolean lowerCheck;
	private int size;
	
	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}
	public void mailSendWithUserKey(String email, HttpServletRequest request) {
		String key = getKey(false, 20);
		dao.GetKey(email, key);
		MimeMessage mail = mailSender.createMimeMessage();
		try {
			String htmlStr = "<h2>안녕하세요 MS :p ㅇㅏ ㅇㅣㄷㅣ ㅇㅓ입니다.</h2><br><br>" 
					+ "<h3>" + email + "님</h3>" + "<p>인증하기 버튼을 누르시면 로그인을 하실 수 있습니다 : " 
					+ "<a href='http://"+Inet4Address.getLocalHost().getHostAddress()+":8080" + request.getContextPath() + "/user/key_alter?email="+ email +"&userkey="+key+"'>인증하기</a></p>"
					+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
			mail.setSubject("[본인인증] MS :p ㅇㅏㅇㅣㄷㅣㅇㅓ님의 인증메일입니다","UTF-8"); 
			mail.setText(htmlStr,"UTF-8","html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(email));
			mailSender.send(mail);
		}catch(MessagingException | UnknownHostException e) {
			e.printStackTrace();
		}
	}
	public int alter_userKey_service(String email, String key) {
		int resultCnt = dao.updateUserkey(email, key);
		return resultCnt;
	}
}
