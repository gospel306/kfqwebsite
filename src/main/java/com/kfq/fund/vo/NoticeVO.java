package com.kfq.fund.vo;

import java.sql.Date;

public class NoticeVO {
	private int no;
	private String title;
	private String author;
	private Date createdat;
	private String context;
	
	public NoticeVO(String title, String author, Date createdat, String context) {
		super();
		this.title = title;
		this.author = author;
		this.createdat = createdat;
		this.context = context;
	}
	
	public NoticeVO(Integer no, String title, String author, Date createdat) {
		super();
		this.no = no;
		this.title = title;
		this.author = author;
		this.createdat = createdat;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getCreatedat() {
		return createdat;
	}
	public void setCreatedat(Date createdat) {
		this.createdat = createdat;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
}
