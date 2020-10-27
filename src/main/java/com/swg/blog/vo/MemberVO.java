package com.swg.blog.vo;

import java.util.Date;

public class MemberVO {
	private Integer unum;
	private String userid; 
	private String userpw ;
	private String username; 
	private String email ;
    private Date rdate;
     
    public Integer getUnum() {
    	return unum;
    }
    public void setUnum(Integer unum) {
    	this.unum = unum;
    }
    
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	} 
    
    
    
}
