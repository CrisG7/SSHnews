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
				<div>
					<div>
						
								<div class="row" style="margin-left:100px;margin-top:100px;">
									<div>
										<table id="sample-table-1" class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
											
													<th>序号</th>
													<th style="width:800px; text-align:center;">类型</th>
													
													<th class="hidden-480" style="width:500px;text-align:center;">操作</th>
												</tr>
											</thead>

											<tbody>
											<s:iterator value="categories" var="category">
												<tr>
													<td class="center" style="font-size:18px;">
														<s:property value="#category.id"/>
													</td>
													<td style="font-size:18px; text-align:center;">
													<s:property value="#category.categoryName"/>
													</td>
													
													<td style="text-align:center;">
														<div class="hidden-sm hidden-xs btn-group">
															<s:a href="SSH/updateCAction.action?id=%{#category.id}"><button class="btn btn-xs btn-info">
																修改
															</button>
                                                            </s:a>
															<s:a href="SSH/deleteCAction.action?id=%{#category.id}"> <button class="btn btn-xs btn-danger" onclick="return(confirm('確定刪除?'))"">
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
