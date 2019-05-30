<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix='s' uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>后台登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<style>
body{
background-color: rgb(158, 212, 236);;
}


</style>
</head>
<body>
    <!-- main -->
    <div class="main">
        <h1 style="margin-left:-30%;">
                    登录系统
        </h1>
        <s:form action="login" namespace="/SSH" method="post" >
            <s:textfield name="username" label="用户名"/>
            <s:password name="password" label="密码"/>
        <s:submit value="登录"/>
        </s:form>
    </div>
</body>
</html>