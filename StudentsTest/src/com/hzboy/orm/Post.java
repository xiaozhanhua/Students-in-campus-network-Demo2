package com.hzboy.orm;

public class Post implements java.io.Serializable  {
	
	private Integer postid;
	private String title;
	private String content;
	private String time;
	private Integer uid;
	public Integer getPostid() {
		return postid;
	}
	public void setPostid(Integer postid) {
		this.postid = postid;
	}
	public String getTitle() {
		return title;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
	
}
