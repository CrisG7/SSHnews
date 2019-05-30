<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../css/font-awesome.min.css" />
		<link rel="stylesheet" href="../css/ace-fonts.css" />
		<link rel="stylesheet" href="../css/ace.min.css" id="main-ace-style" />
		<style type="text/css">
			a{
			 text-decoration:none;
			 
			}
	
		</style>
	</head>

	<body class="page-content">	
	<div class="head" style="margin-left:100px; margin-top:100px;">
		<s:form action="getCategoryNAction" namespace="/SSH" theme="simple">
			<s:select headerKey="-1" name="news.category.id" headerValue="--请选择新闻类型--"
				   list="categorylist" listValue="categoryName" listKey="id"/>
			<s:submit value="查看新闻"/>
		</s:form>
	</div>
				<div>
					<div>
						
								<div class="row" style="margin-left:100px;">
									<div>
										<table id="sample-table-1" class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
											
													<th>序号</th>
													<th style="width:300px; text-align:center;">标题</th>
													<th class="hidden-480" style="width:300px; text-align:center;">发布时间</th>
													<th>
														新闻类型
													</th>
													
													<th class="hidden-480" style="width:300px; text-align:center;">操作</th>
												</tr>
											</thead>

											<tbody>
											<s:iterator value="newses" var="news" status="nct">
												<tr>
													<td class="center" style="font-size:18px;">
														<s:property value="#nct.count"/>
													</td>
													<td style="font-size:18px; text-align:center;">
													<s:a href="SSH/getNewsInfoNAction.action?nid=%{#news.id}"><s:property value="#news.title"/></s:a>
													</td>
													<td style="font-size:18px; text-align:center;"><s:property value="%{getText('{0,date,yyyy-MM-dd HH:mm:ss}',{#news.issueTime})}"/></td>
												
													<td class="hidden-480">
														<span style="font-size:20px;"><s:property value="#news.category.categoryName"/></span>
													</td>
													<td>
														<div class="hidden-sm hidden-xs btn-group">
															<s:a href="SSH/updateNewsNAction.action?nid=%{#news.id}"><button class="btn btn-xs btn-info">
																修改
															</button>
                                                            </s:a>
															<s:a href="SSH/deleteNewsNAction.action?nid=%{#news.id}"> <button class="btn btn-xs btn-danger" onclick="return(confirm('確定刪除这条新闻?'))"">
																删除
															</button></s:a>

														</div>
													</td>		
														</s:iterator>		
											</tbody>
										</table>
								
								</div>			

 

	</body>
</html>
