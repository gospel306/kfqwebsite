package com.kfq.fund.vo;

public class JoinVO {
	private int id;
	private int contest_id;
	private String email;
	private String content;
	
	public JoinVO(int contest_id,String email,String content) {
		this.contest_id = contest_id;
		this.email = email;
		this.content = content;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getContest_id() {
		return contest_id;
	}
	public void setContest_id(int contest_id) {
		this.contest_id = contest_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
