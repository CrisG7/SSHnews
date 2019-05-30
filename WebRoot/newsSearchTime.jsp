<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newslist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
			<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link  rel="stylesheet" type="text/css" href="css/news.css" />      
	<style>
      
		/* body{	
		    margin：0 auto;
			justify-content:center;
			display:flex;			
			}
        #c{	
            width: 600px;
			height:500px;
			display:flex;
			font-family:"华文中宋";
			font-size:20px;	
			float:left;		 			  
        } */
    </style>
  </head>
  
  <body>
  <%-- <div id="c">
  <form name="form1">
  <br /><br />
  <hr width="500px" /><br />
   <table border="0" width="500px" style="text-align:center">
   <tr><th>序号</th><th>标题</th><th>发布时间</th><th>类型</th></tr>
   <s:if test="newses==null||newses.isEmpty() ">                                                                                        
                                             <font style="color:red">没有找到你要查询的内容 </font>
   </s:if>
   <s:iterator value="newses" var="news" status="stu">
   <tr>
   <td><s:property value="#news.id"/></td>
   <td><s:a href="SSH/qtgetNewsInfoQAction.action?nid=%{#news.id}"><s:property value="#news.title"/></s:a></td>
   <td><s:property value="#news.issueTime"/></td>
   <td><s:property value="#news.category.categoryName"/></td>
   </tr>
   </s:iterator>
   </table>
      <br /><br />
  <hr width="500px" /><br /><br />
  </form>
   </div> --%>
   
   			  <nav class="navbar navbar-info bg-info navbar-expand-md sticky-top">
            <div class="container">
              <a class="navbar-brand" href="qtlistNewsQAction.action">NEWS</a>
              <a href="login.jsp" class="navbar-brand" style="color: aqua;"> 后台登录</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mynav">
              <span class="navbar-toggler-icon"></span>
              </button>        
              <div class="navbar-collapse collapse" id="mynav">            
              <ul class="navbar-nav ml-auto">
                
                <div class="input-group-sm">
                        
	 <s:form name="form1" action="searchQAction" namespace="/SSH" theme="simple" class="form-inline">
      <s:textfield name="title" size="40" height="30" label="新闻查询" style="color:#ffffff;"/>
      <s:submit value="search"/>
      </s:form>
                  </div>
                  </div>
              </ul>
          
              </div>
            </div>
            </nav>

				 <s:if test="newses==null||newses.isEmpty() ">                                                                                        
                                           <div class="jumbotron text-center">
								
								<h1>没有所查询的相关内容</h1>						
								</div>
   </s:if>
 	    <s:else><div class="jumbotron text-center">
								
								<h1>查询结果</h1>						
								</div>
													<div class="head" style="margin-left:180px;">
		<%-- <s:form action="qtgetCategoryQAction" namespace="/SSH" theme="simple">
			<s:select headerKey="-1" name="news.category.id" headerValue="--请选择新闻类型--"
				   list="categorylist" listValue="categoryName" listKey="id"/>
			<s:submit value="查看新闻"/>
		</s:form> --%>
						
								<div class="row" style="margin-left:180px;">
									<div>
										<table id="sample-table-1" class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
											
												
													<th style="width:300px; text-align:center;">标题</th>
													<th class="hidden-480" style="width:300px; text-align:center;">发布时间</th>
													<th style="width:300px;">
														新闻类型
													</th>
													
												
												</tr>
											</thead>

											<tbody>
											<s:iterator value="newses" var="news" status="nct">
												<tr>
													
													<td style="font-size:18px; text-align:center;">
													<s:a href="qtgetNewsInfoQAction.action?nid=%{#news.id}"><s:property value="#news.title"/></s:a>
													</td>
													<td style="font-size:18px; text-align:center;"><s:property value="%{getText('{0,date,yyyy-MM-dd}',{#news.issueTime})}"/></td>
												
													<td class="hidden-480">
														<span style="font-size:20px;"><s:property value="#news.category.categoryName"/></span>
													</td>
													
														</s:iterator>		
											</tbody>
										</table>
								
								</div>

			</div>
			</div></s:else>
  </body>
</html>
