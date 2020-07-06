package com.kfq.fund.vo;

import java.sql.Date;

public class ContestVO {
	private int id;
	private String memberemail;
	private boolean payed;
	private String title;
	private String contesttype;
	private String company;
	private String serviceinfo;
	private String sector;
	private String idea;
	private String briefing;
	private boolean show;
	private boolean highlight;
	private boolean secret;
	private boolean benner;
	private Date startdate;
	private Date enddate;
	private int firstprize;
	private int secondprize;
	private int thirdprize;
	private int views;
	
	private long people;
	private int day;
	
	public ContestVO(Integer id,String title,String contesttype,String company,String serviceinfo, String sector, String idea, String briefing) {
		this.id = id;
		this.title = title;
		this.contesttype = contesttype;
		this.company = company;
		this.serviceinfo = serviceinfo;
		this.sector = sector;
		this.idea = idea;
		this.briefing = briefing;
	}
	public ContestVO(String memberemail,String title, String contesttype,String company,String serviceinfo,String sector,String idea,String briefing) {
		this.memberemail = memberemail;
		this.title = title;
		this.contesttype = contesttype;
		this.company = company;
		this.serviceinfo = serviceinfo;
		this.sector = sector;
		this.idea = idea;
		this.briefing = briefing;
	}
	public ContestVO(String title, String contesttype, String company, String serviceinfo, Date startdate, Date enddate, int firstprize, int secondprize, int thirdprize, boolean benner, boolean hightlight, int views) {
		this.title = title;
		this.contesttype = contesttype;
		this.company = company;
		this.serviceinfo = serviceinfo;
		this.startdate = startdate;
		this.enddate = enddate;
		this.benner = benner;
		this.firstprize = firstprize;
		this.secondprize = secondprize;
		this.thirdprize = thirdprize;
		this.highlight = hightlight;
		this.views = views;
	}
	public ContestVO(Integer id, String title, Long count, Integer day) {
		this.id = id;
		this.title = title;
		this.people = count;
		this.day = day;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getBriefing() {
		return briefing;
	}
	public void setBriefing(String briefing) {
		this.briefing = briefing;
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
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public long getPeople() {
		return people;
	}
	public void setPeople(long people) {
		this.people = people;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	@Override
	public String toString() {
		return "ContestVO [id=" + id + ", memberemail=" + memberemail + ", payed=" + payed + ", title=" + title
				+ ", contesttype=" + contesttype + ", company=" + company + ", serviceinfo=" + serviceinfo + ", sector="
				+ sector + ", idea=" + idea + ", briefing=" + briefing + "]";
	}
	
}
