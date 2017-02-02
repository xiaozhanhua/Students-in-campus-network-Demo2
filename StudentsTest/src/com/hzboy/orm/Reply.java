package com.hzboy.orm;

public class Reply implements java.io.Serializable{

	private Integer replyid;
	private String content;
	private String time;
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	private Integer pid;
	private Integer uid;
	public Integer getReplyid() {
		return replyid;
	}
	public void setReplyid(Integer replyid) {
		this.replyid = replyid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
}
