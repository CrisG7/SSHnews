<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/news.css" />       
		<style type="text/css">
			a{
			 text-decoration:none;			 
			}
	.f{
	font-size:20px;	
/* list-style:none; */
margin-top:10px;
}
.f:hover{

}

.dd{
 /* border-left: 2px solid #CCC;
   border-top: 2px solid #CCC;
       border-bottom: 2px solid #CCC;
    border-right: 2px solid #CCC; */
     border-right: 2px solid #CCC;
}
		</style>
	</head>

	<body class="page-content">	

<%--       <div class="container" style="background-color: #ece3e3; border: 1px solid  #0c2de9">
        <a class="navbar-brand" href="" style="color: #0c2de9;font-size:40px;">B</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mynav">
          <span class="navbar-toggler-icon"></span>
        </button>

        
	 <s:form name="form1" action="searchQAction" namespace="/SSH" theme="simple" class="form-inline">
  <br />
      <s:textfield name="search" size="40" height="30" label="新闻查询"/>
      <s:submit value="search"/>
      </s:form>

   
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

				
 	<div class="jumbotron text-center">
								<h1>全部新闻</h1>						
								</div>
													<div class="head" style="margin-left:80px;">
		<%-- <s:form action="qtgetCategoryQAction" namespace="/SSH" theme="simple">
			<s:select headerKey="-1" name="news.category.id" headerValue="--请选择新闻类型--"
				   list="categorylist" listValue="categoryName" listKey="id"/>
			<s:submit value="查看新闻"/>
		</s:form> --%>
						
						
						
						
						
						
						<s:form action="searchTimeQAction.action" name="form">
						发布时间：
						<span> </span>
						<input type="date" name="startTime"/>
						
						<a>到</a><span> </span>
						<input type="date" name="endTime"/>
						<a>之间</a><span> </span>
						<s:submit value="查询" style="margin-right:1000px;"/>
						</s:form>
						
						
						
						
								<div class="row" style="margin-left:280px;">
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
													<%-- <td class="center" style="font-size:18px;">
														<s:property value="#nct.count"/>
													</td> --%>
													<td style="font-size:18px; text-align:center;">
													<s:a href="qtgetNewsInfoQAction.action?nid=%{#news.id}"><s:property value="#news.title"/></s:a>
													</td>
													<td style="font-size:18px; text-align:center;"><s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm:ss}',{#news.issueTime})}"/></td>
												
													<td class="hidden-480">
														<span style="font-size:20px;"><s:property value="#news.category.categoryName"/></span>
													</td>
													
														</s:iterator>		
											</tbody>
										</table>
								
								</div>

			</div>	
			
			
		<div>
		
		</div>	
			</div>			
						<div class="jumbotron text-center" style="width:100%;">
								<h1>新闻分类</h1>						
								</div>			
                     <div style="float:left; width:20%;margin-left:5%;margin-top:2%;" class="dd">
                     <s:iterator value="yl" var="y" status="nct">
                     <h2><s:property value="#y.categoryName"/></h2>
                     <span style="font-size:18px;color:blue;">…………………………………………</span></s:iterator>		
                          <s:iterator value="yule" var="news" status="nct">
                         
                    <ul>
                        <li  class="f"><s:a href="qtgetNewsInfoQAction.action?nid=%{#news.id}"><s:property value="#news.title"/></s:a></li>
                    </ul>
                       </s:iterator>		
                    </div>                  
                     <div style="float:left; width:20%;margin-left:5%;margin-top:2%;" class="dd">
                    <s:iterator value="js" var="y" status="nct">
                     <h2><s:property value="#y.categoryName"/></h2>
                       <span style="font-size:18px;color:blue;">…………………………………………</span>
                     </s:iterator>		
                          <s:iterator value="junshi" var="news" status="nct">
                         
                    <ul>
                        <li class="f"><s:a href="qtgetNewsInfoQAction.action?nid=%{#news.id}"><s:property value="#news.title"/></s:a></li>
                    </ul>
                       </s:iterator>		
                    </div>
                    
                     <div style="float:left; width:20%;margin-left:5%;margin-top:2%;" class="dd">
                     <s:iterator value="kj" var="y" status="nct">
                     <h2><s:property value="#y.categoryName"/></h2>
                      <span style="font-size:18px;color:blue;">…………………………………………</span>
                     </s:iterator>		
                          <s:iterator value="keji" var="news" status="nct">
                          
                    <ul>
                        <li class="f"><s:a href="qtgetNewsInfoQAction.action?nid=%{#news.id}"><s:property value="#news.title"/></s:a></li>
                    </ul>
                       </s:iterator>		
                    </div>
                    
                     <div style="float:left; width:20%;margin-left:5%;margin-top:2%;" class="dd">
                    <s:iterator value="wx" var="y" status="nct">
                     <h2><s:property value="#y.categoryName"/></h2>
                       <span style="font-size:18px;color:blue;">…………………………………………</span>
                     </s:iterator>		
                          <s:iterator value="wenxue" var="news" status="nct">
                         
                    <ul>
                        <li class="f"><s:a href="qtgetNewsInfoQAction.action?nid=%{#news.id}"><s:property value="#news.title"/></s:a></li>
                    </ul>
                       </s:iterator>		
                    </div>
 
 
 
 
  <div id="contact" class="footer" style="margin-top:400px;">
				<div class="container">
					<div class="f-left">
						<div class="f-left-left">
								<ul>
										<li class="value">友情链接</a></li>
										<li><a href="#">3DM</a></li>
										<li><a href="#">17173</a></li>
										<li><a href="#">多玩</a></li>
										<li><a href="#">游讯</a></li>
									</ul>
								</div>	
								<div class="f-left-left">
									<ul>
										<li class="value">合作</a></li>
										<li><a href="#">腾讯</a></li>
										<li><a href="#">网易</a></li>
										<li><a href="#">7k7k</a></li>
										<li><a href="#">4399</a></li>
									</ul>
								</div>	
								<div class="f-left-left">
									<ul>
										<li class="value">联系我们</a></li>
										<li><a href="#">Facebook</a></li>
										<li><a href="#">微博</a></li>
										<li><a href="#">Twitter</a></li>
									</ul>
									</div>
					</div>
					
					<div class="clearfix"> </div>
				</div>
			</div>

	</body>
</html>
