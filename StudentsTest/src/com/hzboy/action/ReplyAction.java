package com.hzboy.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.hzboy.orm.Post;
import com.hzboy.orm.Reply;
import com.hzboy.orm.User;
import com.hzboy.service.ManagerService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ReplyAction extends ActionSupport{
	
	private Reply reply = new Reply(); 
	
	private ManagerService<Reply> userService;
	
	private List<Reply> replys;
	
	private String searchText;
	
	
	public String doQuery(){
		searchText = getParam("queryText");
		replys = userService.queryUsers(searchText,Reply.class);
		return SUCCESS;
	}

	public String doAdd(){
		String result = "";
		try {
			String param = getParam("param");
			if(Integer.parseInt(param) > 0){
				SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd hh:mm");
				String pb_time =time.format(new Date());
				reply.setTime(pb_time);
				reply.setReplyid(0);
				userService.addUser(reply);
				result = doQuery();
			}else
				result = "addReply";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public String doEdit(){
		try {
			Integer param = Integer.parseInt(getParam("param"));
			if(param == 0){
				Integer id = Integer.parseInt(getParam("id"));
				 int replyid = id.intValue();
				reply = userService.getUser(Reply.class,replyid );
				return "editUser";
			}else if(param == 1){
//				userService.modifyUser(user);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return doQuery();
	}
	
	
	public Reply getReply() {
		return reply;
	}

	public void setReply(Reply reply) {
		this.reply = reply;
	}

	public ManagerService<Reply> getUserService() {
		return userService;
	}

	public void setUserService(ManagerService<Reply> userService) {
		this.userService = userService;
	}

	public List<Reply> getReplys() {
		return replys;
	}

	public void setReplys(List<Reply> replys) {
		this.replys = replys;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	protected String getParam(String key){
		return ServletActionContext.getRequest().getParameter(key);
	}
	


}

