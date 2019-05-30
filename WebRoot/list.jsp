<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title></title>
	
			<link rel="stylesheet" href="css/page.css" />
		<script type="text/javascript" src="js/index.js" ></script>
</head>
<body>
	<div class="left">
			<div class="bigTitle">新闻后台管理系统</div>
			<div class="lines">
			     <div class="title">类型管理</div>
			     <div onclick="pageClick(this)"><a href="SSH/listCAction.action" target="showcontent"><img src="img/icon-1.png" />类型查看</a></div>
			     <div onclick="pageClick(this)"><a href="category/categoryAdd.jsp" target="showcontent"><img src="img/icon-1.png" />类型发布</a></div>
			     <div class="title">新闻管理</div>
			     <div onclick="pageClick(this)"><a href="SSH/listNewsNAction.action" target="showcontent"><img src="img/icon-1.png" />新闻查看</a></div>
			     <div onclick="pageClick(this)"><a href="SSH/getListNAction.action" target="showcontent"><img src="img/icon-1.png" />新闻发布</a></div> 
			      <div onclick="pageClick(this)"><a href="qtlistNewsQAction.action" target="_top"><img src="img/icon-2.png" />返回首页</a></div>
			</div>
		</div>

</body>
</html>
