package com.sise.ssh.gh.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sise.ssh.gh.po.User;

public class UserAction extends ActionSupport implements ModelDriven {

	
	private User user=new User();
	
	

	public Object getModel() {
		return user;
	}
	
	public String execute() throws Exception{
		ActionContext ctx=ActionContext.getContext();
		Map session=ctx.getSession();
		if (user.getUsername()!=null&&user.getUsername().equals("admin")&&user.getPassword()!=null&&user.getPassword().equals("sise")){
			session.put("username", user.getUsername());
			return SUCCESS;}
         else if(user.getUsername().isEmpty()){
			addFieldError("username","用户名不能为空");
			return LOGIN;
		}else if(user.getPassword().isEmpty()){
			addFieldError("password","密码不能为空");
			return LOGIN;
		}
		else{
			addFieldError("username","用户名或密码错误！");
			return LOGIN;
		}
		
	}
	public String success() throws Exception{
		return "ss";
	}
}
