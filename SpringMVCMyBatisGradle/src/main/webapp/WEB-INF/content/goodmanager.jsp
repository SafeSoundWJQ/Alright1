<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="js/jquery-1.11.0.min.js"></script>
<!--Custom Theme files-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Luxury Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>	
<!--start-menu-->
<script src="js/simpleCart.min.js"> </script>
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!--dropdown-->
<script src="js/jquery.easydropdown.js"></script>			
</head>
<body> 

	<div class="logo">
		<a href="index.html"><h1>商品管理界面</h1></a>
	</div>
	
	
	<table width="100%" height="90%" border="0" cellpadding="5" cellspacing="0" class="main_tabbor">
	  <!-- 数据展示区 -->
		<tr valign="top">
			<td height="20">
				<table width="100%" border="1" cellpadding="5" cellspacing="0" style="border:#c2c6cc 1px solid; border-collapse:collapse;">
					<tr class="main_trbg_tit" align="center">
		    			<td>商品图片</td>
						<td>商品名称</td>
					    <td>商品价格</td>
					    <td>商品数量</td>
					    <td>商品评价</td>
					    <td><a href="addGood">添加商品</a></td>
					    <td>修改</td>
					    <td>删除</td>
					</tr>
			<c:forEach items="${requestScope.watchlist}" var="good" varStatus="status">
				<tr id="data_${stat.index}" align="center" class="main_trbg" onMouseOver="move(this);" onMouseOut="out(this);">
					<td>
						<c:if test="${good.image!=null }">
							<img src="./images/${good.image}" width=100 height=60/>
							<br/>
						</c:if>
					</td>
					<td>${good.name}</td>
					<td>${good.price}</td>
					<td>${good.count}</td>
					<td>${good.remark}</td>
					<td><a href="addGood">添加商品</a></td>
					<td><a href="goUpdateGoods/${good.id }">修改商品</a></td>
					 <td><a href="deleteGoods/${good.id }">删除商品</a></td>
				</tr>
			</c:forEach>
		  </table>
	<!--footer-end-->	
</body>
</html>