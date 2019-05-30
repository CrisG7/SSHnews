<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/styleC.css" />       

<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
            
   <%--  <h3><s:property value="news.title"/></h3>
	<p>来源：<s:property value="news.newsfrom"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：<s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm:ss}',{news.issueTime})}"/></p>
	<hr><br><br>
	<div>&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="news.content"/></div>  --%>
            
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
<div class="main">
  <div class="contents">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 style="text-align:center;font-size:28px;"><s:property value="news.title"/></h2>
          <div class="clr"></div>
          <p style="font-size:18px;text-align:right;">来源 by <a href="#"><s:property value="news.newsfrom"/></a> <span>&nbsp;&bull;&nbsp;</span> 发布时间 <a href="#"><s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm:ss}',{news.issueTime})}"/></a></p>
          <p style="font-size:21px;color:black;font-family:STFangsong; height:500px;line-height:30px;"><s:property value="news.content"/></p>
          <p style="font-size:18px;"><strong>类型：</strong>  <s:property value="news.category.categoryName"/></p>
        </div>       
</div>
</div>
</div>
</div>
</body>
</html>
	
		
</body>
</html>