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
	private int show;
	private int highlight;
	private int secret;
	private int benner;
	private Date startdate;
	private Date enddate;
	private int firstprize;
	private int secondprize;
	private int thirdprize;
	private int fullprize;
	private int views;
	private String imgurl;
	private String paytype;
	private String directory;
	
	private int winner;
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
	
	public ContestVO(Integer id,String title,String contesttype,String company,String serviceinfo, String sector, String idea, String briefing, String directory) {
		this.id = id;
		this.title = title;
		this.contesttype = contesttype;
		this.company = company;
		this.serviceinfo = serviceinfo;
		this.sector = sector;
		this.idea = idea;
		this.briefing = briefing;
		this.directory = directory;
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
	
	public ContestVO(Integer id,String title, String contesttype,String nickname, String company, String serviceinfo, Integer views, Integer day, Date enddate, Integer firstprize, Integer secondprize, Integer thirdprize, Integer hightlight,Integer fullprize,String paytype,Integer winner) {
		this.title = title;
		this.contesttype = contesttype;
		this.memberemail = nickname; //nickname 대체
		this.company = company;
		this.serviceinfo = serviceinfo;
		this.views = views;
		this.day = day;
		this.enddate = enddate;
		this.firstprize = firstprize;
		this.secondprize = secondprize;
		this.thirdprize = thirdprize;
		this.highlight = hightlight;
		this.fullprize = fullprize;
		this.paytype = paytype;
		this.id = id;
		this.winner = winner;
	}
	public ContestVO(Integer id,String title, String contesttype,String nickname, String company, String serviceinfo, Integer views, Long day, Date enddate, Integer firstprize, Integer secondprize, Integer thirdprize, Integer hightlight,Integer fullprize,String paytype) {
		this.title = title;
		this.contesttype = contesttype;
		this.memberemail = nickname; //nickname 대체
		this.company = company;
		this.serviceinfo = serviceinfo;
		this.views = views;
		this.day = (int)(long)day;
		this.enddate = enddate;
		this.firstprize = firstprize;
		this.secondprize = secondprize;
		this.thirdprize = thirdprize;
		this.highlight = hightlight;
		this.fullprize = fullprize;
		this.paytype = paytype;
		this.id = id;
	}
	public ContestVO(Integer id,String title, String contesttype,String nickname, String company, String serviceinfo, Integer views, Long day, Date enddate, Integer firstprize, Integer secondprize, Integer thirdprize, Integer hightlight,Integer fullprize,String paytype,Integer winner) {
		this.title = title;
		this.contesttype = contesttype;
		this.memberemail = nickname; //nickname 대체
		this.company = company;
		this.serviceinfo = serviceinfo;
		this.views = views;
		this.day = (int)(long)day;
		this.enddate = enddate;
		this.firstprize = firstprize;
		this.secondprize = secondprize;
		this.thirdprize = thirdprize;
		this.highlight = hightlight;
		this.fullprize = fullprize;
		this.paytype = paytype;
		this.id = id;
		this.winner = winner;
	}
	public ContestVO(Integer id, String title, Long count, Integer day) {
		this.id = id;
		this.title = title;
		this.people = count;
		this.day = day;
	}
	public ContestVO(Integer id, String title, Long count, Integer day, Integer firstprize) {
		this.id = id;
		this.title = title;
		this.people = count;
		this.day = day;
		this.firstprize = firstprize;
	}
	public ContestVO(Integer id, String title,String contesttype, String imgurl) {
		this.id = id;
		this.title = title;
		this.contesttype = contesttype;
		this.imgurl = imgurl;
	}
	public ContestVO(Integer id, Integer winner,String directory) {
		this.id = id;
		this.winner = winner;
		this.directory = directory;
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
	public int getShow() {
		return show;
	}
	public void setShow(int show) {
		this.show = show;
	}
	public int getHighlight() {
		return highlight;
	}
	public void setHighlight(int highlight) {
		this.highlight = highlight;
	}
	public int getSecret() {
		return secret;
	}
	public void setSecret(int secret) {
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
	public boolean getPayed() {
		return payed;
	}
	public void setPayed(boolean payed) {
		this.payed = payed;
	}
	public int getBenner() {
		return benner;
	}
	public void setBenner(int benner) {
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
	public int getFullprize() {
		return fullprize;
	}
	public void setFullprize(int fullprize) {
		this.fullprize = fullprize;
	}
	public String getImgurl() {
		return imgurl;
	}
	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	public int getWinner() {
		return winner;
	}
	public void setWinner(int winner) {
		this.winner = winner;
	}
	public String getDirectory() {
		return directory;
	}
	public void setDirectory(String directory) {
		this.directory = directory;
	}
	
}
