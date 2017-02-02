package com.hzboy.orm;


public class User implements java.io.Serializable {

	private Integer id;
	private String uname;
	private String password;

	public User() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}


	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}