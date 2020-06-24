package com.kfq.fund.vo;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class NoticeVO {
	private String no;
	private String title;
	private String author;
	private Timestamp createdat;
	private String context;
	
	public NoticeVO(BigDecimal no, String title, String author, Timestamp createdat) {
		super();
		this.no = String.valueOf(no);
		this.title = title;
		this.author = author;
		this.createdat = createdat;
	}

	public NoticeVO(String title, String author, Timestamp createdat, String context) {
		super();
		this.title = title;
		this.author = author;
		this.createdat = createdat;
		this.context = context;
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
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
	public Timestamp getCreatedat() {
		return createdat;
	}
	public void setCreatedat(Timestamp createdat) {
		this.createdat = createdat;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
}
