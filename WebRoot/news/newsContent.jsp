<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
	h3,p{
		text-align:center;
	}
	div{
		padding:10px 100px;
	}
</style>
</head>
<body>
	<h3><s:property value="news.title"/></h3>
	<p>来源：<s:property value="news.newsfrom"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间：<s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm:ss}',{news.issueTime})}"/></p>
	<hr><br><br>
	<div>&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="news.content"/></div>
		
</body>
</html>