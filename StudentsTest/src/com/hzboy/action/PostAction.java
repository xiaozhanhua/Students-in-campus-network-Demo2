package com.hzboy.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.apache.struts2.ServletActionContext;

import com.hzboy.orm.Post;
import com.hzboy.service.ManagerService;
import com.opensymphony.xwork2.ActionSupport;

//帖子的
public class PostAction extends ActionSupport{
	
	private Post post = new Post(); 
	
	private ManagerService<Post> userService;

	private List<Post> posts;

	private String searchText;

	public String doAdd(){
		String result = "";
		try {
			String param = getParam("param");
			if(Integer.parseInt(param) > 0){
				SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd hh:mm");
				String pb_time =time.format(new Date());
				post.setTime(pb_time);
				post.setPostid(0);
				userService.addUser(post);
				result = doQuery();
			}else
				result = "addproduct";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public String doShow(){
		try {
			Integer param = Integer.parseInt(getParam("param"));
			if(param == 0){
				Integer id = Integer.parseInt(getParam("id"));
				 int postid = id.intValue();
				post = userService.getUser(Post.class, postid);
				return "mypost";
			}else if(param == 1){
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return doQuery();
	}
	
	public String doQuery(){
		searchText = getParam("queryText");
		posts = userService.queryUsers(searchText,Post.class);
		return SUCCESS;
	}
	
	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public ManagerService<Post> getUserService() {
		return userService;
	}

	public void setUserService(ManagerService<Post> userService) {
		this.userService = userService;
	}

	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
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

