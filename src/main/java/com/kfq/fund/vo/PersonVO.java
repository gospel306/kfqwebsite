package com.kfq.fund.vo;

import java.math.BigDecimal;

import lombok.Data;

@Data
public class PersonVO {
	private String idx;
	private String name;
	private String email;
	private String passwd;
	private String content;
	
	public PersonVO(BigDecimal idx, String name, String email, String passwd, String content) {
		super();
		this.idx = String.valueOf(idx);
		this.name = name;
		this.email = email;
		this.passwd = passwd;
		this.content = content;
	}
	public String getIdx() {
		return idx;
	}
	public void setIdx(String idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "PersonVO [idx=" + idx + ", name=" + name + ", email=" + email + ", passwd=" + passwd + ", content="
				+ content + "]";
	}
	
}
