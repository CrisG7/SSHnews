<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h3>发布新闻类型</h3>
	<s:form action="addCAction" namespace="/SSH">
		<s:textfield name="category.categoryName" label="类型名"/>
		<s:submit value="添加"/>
	</s:form>
</body>
</html>