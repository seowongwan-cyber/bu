package com.swg.blog.vo;

import java.util.Date;

public class BoardVO {

	private Integer bno;
	private String title;
	private String userid;
	private String content;
	private String attorg;
	private String attnew;
	private Date regdate;
	private int viewcnt;
	
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getAttorg() {
		return attorg;
	}
	public void setAttorg(String attorg) {
		this.attorg = attorg;
	}
	public String getAttnew() {
		return attnew;
	}
	public void setAttnew(String attnew) {
		this.attnew = attnew;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
}
