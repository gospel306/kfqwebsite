package com.kfq.fund.vo;

import java.sql.Date;

public class ContestVO {
	private int id;
	private String memberemail;
	private boolean payed;
	private String name;
	private String contesttype;
	private String company;
	private String serviceinfo;
	private String sector;
	private String idea;
	private boolean show;
	private boolean highlight;
	private boolean secret;
	private boolean benner;
	private Date startdate;
	private Date enddate;
	private int firstprize;
	private int secondprize;
	private int thirdprize;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContesttype() {
		return contesttype;
	}
	public void setContesttype(String contesttype) {
		this.contesttype = contesttype;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getServiceinfo() {
		return serviceinfo;
	}
	public void setServiceinfo(String serviceinfo) {
		this.serviceinfo = serviceinfo;
	}
	public String getSector() {
		return sector;
	}
	public void setSector(String sector) {
		this.sector = sector;
	}
	public String getIdea() {
		return idea;
	}
	public void setIdea(String idea) {
		this.idea = idea;
	}
	public String getMemberemail() {
		return memberemail;
	}
	public void setMemberemail(String memberemail) {
		this.memberemail = memberemail;
	}
	public boolean isShow() {
		return show;
	}
	public void setShow(boolean show) {
		this.show = show;
	}
	public boolean isHighlight() {
		return highlight;
	}
	public void setHighlight(boolean highlight) {
		this.highlight = highlight;
	}
	public boolean isSecret() {
		return secret;
	}
	public void setSecret(boolean secret) {
		this.secret = secret;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public int getFirstprize() {
		return firstprize;
	}
	public void setFirstprize(int firstprize) {
		this.firstprize = firstprize;
	}
	public int getSecondprize() {
		return secondprize;
	}
	public void setSecondprize(int secondprize) {
		this.secondprize = secondprize;
	}
	public int getThirdprize() {
		return thirdprize;
	}
	public void setThirdprize(int thirdprize) {
		this.thirdprize = thirdprize;
	}
	public boolean isPayed() {
		return payed;
	}
	public void setPayed(boolean payed) {
		this.payed = payed;
	}
	public boolean isBenner() {
		return benner;
	}
	public void setBenner(boolean benner) {
		this.benner = benner;
	}
}
