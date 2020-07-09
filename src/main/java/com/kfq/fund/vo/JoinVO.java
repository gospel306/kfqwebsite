package com.kfq.fund.vo;

public class JoinVO {
	private int id;
	private int contest_id;
	private String email;
	private String title;
	private String content;
	private String thumbnailurl;
	
	public JoinVO(Integer contest_id,String email,String title,String content,String thumbnailurl) {
		this.contest_id = contest_id;
		this.title = title;
		this.email = email;
		this.content = content;
		this.thumbnailurl = thumbnailurl;
	}
	public JoinVO(Integer contest_id,String title,String content,String thumbnailurl) {
		this.contest_id = contest_id;
		this.title = title;
		this.content = content;
		this.thumbnailurl = thumbnailurl;
	}
	public JoinVO(Integer contest_id, String title, String thumbnailurl) {
		this.contest_id = contest_id;
		this.title = title;
		this.thumbnailurl = thumbnailurl;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getThumbnailurl() {
		return thumbnailurl;
	}
	public void setThumbnailurl(String thumbnailurl) {
		this.thumbnailurl = thumbnailurl;
	}
	
	
}
