package com.hzboy.action;

import java.util.List;
import org.apache.struts2.ServletActionContext;

import com.hzboy.orm.User;
import com.hzboy.service.ManagerService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	
	private User user = new User(); 
	
	
	private ManagerService<User> userService;
	
	private List<User> users;
	
	private String searchText;
	
	public String doLogin(){
		if(this.user.getUname() == null || this.user.getPassword() == null) return INPUT;
		try {
			User user = userService.doLogin(this.user.getUname(), this.user.getPassword());
			if(user != null){
				ActionContext.getContext().getSession().put("userinfo", user);
				return doQuery();
			}else
				return INPUT;
		} catch (Exception e) {
			return ERROR;
		}
	}
	

	public String doAdd(){
		String result = "";
		try {
			String param = getParam("param");
			if(Integer.parseInt(param) > 0){
				user.setId(Integer.parseInt(this.user.getUname()));
				userService.addUser(user);
				result = doQuery();
			}else
				result = "addUser";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public String doQuery(){
		searchText = getParam("queryText");
		users = userService.queryUsers(searchText,User.class);
		return SUCCESS;
	}
	
	protected String getParam(String key){
		return ServletActionContext.getRequest().getParameter(key);
	}
	
	public ManagerService<User> getUserService() {
		return userService;
	}

	public void setUserService(ManagerService<User> userService) {
		this.userService = userService;
	}

	public List<User> getUsers() {
		return users;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	
}
