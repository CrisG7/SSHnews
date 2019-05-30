package com.sise.ssh.gh.interceptor;

import java.util.Map;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthorityInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		
		ActionContext ctx=invocation.getInvocationContext();
		Map session=ctx.getSession();
		if(session.get("username")!=null){
			System.out.println("用户已登录");
			return invocation.invoke();
		}else{
			ctx.put("tip","您还没有登录，请登录！");
			return Action.LOGIN;
		}
		
	}

}
