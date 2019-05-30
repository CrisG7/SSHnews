<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
	<style type="text/css"> 
	body{
	 background:#c4faf1;
	}
	
	.smart-green { margin-left: auto;
	 margin-right: auto;
	 margin-top:100px;
	  max-width:85%;
	   background: #F8F8F8;
	    padding: 30px 30px 20px 30px;
	    
	     font: 12px Arial, Helvetica, sans-serif;
	      color: #666; border-radius: 5px;
	       -webkit-border-radius: 5px;
	        -moz-border-radius: 5px; }
	         .smart-green h1 { font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif; padding: 20px 0px 20px 40px; display: block; margin: -30px -30px 10px -30px; color: #FFF; background: #9DC45F; text-shadow: 1px 1px 1px #949494; border-radius: 5px 5px 0px 0px; -webkit-border-radius: 5px 5px 0px 0px; -moz-border-radius: 5px 5px 0px 0px; border-bottom: 1px solid #89AF4C; } 
	         .smart-green h1 span { display: block; font-size: 11px; color: #FFF; } 	
	            .update { background-color: #9DC45F; border-radius: 5px; -webkit-border-radius: 5px; -moz-border-border-radius: 5px; border: none; padding: 10px 25px 10px 25px; color: #FFF; text-shadow: 1px 1px 1px #949494; } 
	            .update:hover { background-color: #80A24A; } 
	            .select{}
	            
	            </style>
</head>
<body>
    <div class="smart-green">
		<h1>新闻更新<span></h1> 		
	<s:form action="updatedNewsNAction" namespace="/SSH">
		<s:hidden name="news.id" value="%{news.id}"/>
				<s:textfield name="news.title" label="标题"/>
				<s:select label="类型" headerKey="-1" name="news.category.id" headerValue="--请选择新闻类型--"
				   list="categorylist" listValue="categoryName" listKey="id" value="news.category.id"/>
				<s:textarea cols="90" rows="10" name="news.content" label="内容"/>
				<s:textfield name="news.newsfrom" label="来源"/>
                <s:submit value="更  新" class="update"/> 
		</table>
	</s:form>
	</div>
</body>
</html>