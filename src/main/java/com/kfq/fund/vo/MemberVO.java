package com.kfq.fund.vo;

import java.sql.Date;

public class MemberVO {
	private String email;
	private String passwd;
	private String userclass;
	private String nickname;
	private String userkey;
	private Date date;
	
	public MemberVO(String email, String passwd) { // logincheck
		this.email = email;
		this.passwd = passwd;
	}
	public MemberVO(String email, String nickname, Date date) {
		this.email = email;
		this.nickname = nickname;
		this.date = date;
	}
	public MemberVO(String email, String passwd, String userclass, String nickname) {
		super();
		this.email = email;
		this.passwd = passwd;
		this.userclass = userclass;
		this.nickname = nickname;
		this.userkey = userkey;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getUserclass() {
		return userclass;
	}
	public void setUserclass(String userclass) {
		this.userclass = userclass;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getUserkey() {
		return userkey;
	}
	public void setUserkey(String userkey) {
		this.userkey = userkey;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
}
