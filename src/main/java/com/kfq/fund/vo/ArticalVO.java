package com.kfq.fund.vo;

import java.sql.Timestamp;
import java.time.LocalDateTime;

public class ArticalVO {
	private String category;
	private String notice;
	private String title;
	private String author;
	private Timestamp createdat;
	public ArticalVO(String category, String notice, String title, String author, Timestamp createdat) {
		super();
		this.category = category;
		this.notice = notice;
		this.title = title;
		this.author = author;
		this.createdat = createdat;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
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
	@Override
	public String toString() {
		return "ArticalVO [category=" + category + ", notice=" + notice + ", title=" + title + ", author=" + author
				+ ", createdat=" + createdat + "]";
	}
	
	
}
