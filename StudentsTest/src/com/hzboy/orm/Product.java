package com.hzboy.orm;

import java.io.Serializable;

public class Product implements Serializable{

	private Integer productid;
	private String title;
	private String content;
	private Double price;
	private String photoPath;
	private String time;
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	private Integer uid;
	
	public Integer getProductid() {
		return productid;
	}
	public void setProductid(Integer productid) {
		this.productid = productid;
	}
	public String getTitle() {
		return title;
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
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getPhotoPath() {
		return photoPath;
	}
	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}

}
