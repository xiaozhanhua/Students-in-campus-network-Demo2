package com.hzboy.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.hzboy.orm.Post;
import com.hzboy.orm.Product;
import com.hzboy.service.ManagerService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 产品的
 * @author xiaozhanhua
 *
 */
public class ProductAction extends ActionSupport {
	private File upload;
	private String uploadFileName;
	private String savePath;
	
	private Product product = new Product(); 
	
	private ManagerService<Product> userService;
	
	private List<Product> products;
	
	private String searchText;
	
	
	public String doQuery(){
		searchText = getParam("queryText");
		products = userService.queryUsers(searchText,Product.class);
		return SUCCESS;
	}

	public String doAdd(){
		String result = "";
		try {
			String param = getParam("param");
			FileOutputStream fos = new FileOutputStream(getSavePath()+"\\"+
					getUploadFileName());
						FileInputStream fis = new FileInputStream(getUpload());
						byte[] buffer = new byte[1024];
						int len = 0;
						while((len=fis.read(buffer))>0){
							fos.write(buffer,0,len);
						}
						fos.close();
			if(Integer.parseInt(param) > 0){
				SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd hh:mm");
				String pb_time =time.format(new Date());
				product.setTime(pb_time);
				product.setProductid(0);
				product.setPhotoPath(getUploadFileName());
				userService.addUser(product);
				result = doQuery();
			}else
				result = "addUser";
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
				 int productid = id.intValue();
				 product = userService.getUser(Product.class, productid);
				return "everyPost";
			}else if(param == 1){
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return doQuery();
	}
	
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ManagerService<Product> getUserService() {
		return userService;
	}

	public void setUserService(ManagerService<Product> userService) {
		this.userService = userService;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}


	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getSavePath() {
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	protected String getParam(String key){
		return ServletActionContext.getRequest().getParameter(key);
	}
	
}
