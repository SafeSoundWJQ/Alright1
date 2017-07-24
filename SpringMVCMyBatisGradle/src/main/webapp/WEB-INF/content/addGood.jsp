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
		<a href="index.html"><h1>商品添加界面</h1></a>
	</div>
	
		<form action="addGoods" method="post">
			<table width="100%" border="1" cellpadding="5" cellspacing="0" style="border:#c2c6cc 1px solid; border-collapse:collapse;">
				<tr class="main_trbg_tit" align="center">
	    			<td>商品图片</td>
					<td>商品名称</td>
				    <td>商品价格</td>
				    <td>商品数量</td>
				    <td>商品评价</td>
				    <td><a href="addGood">添加商品</a></td>
				    
				</tr>
		
				<tr id="data_${stat.index}" align="center" class="main_trbg" onMouseOver="move(this);" onMouseOut="out(this);">
					<td>
						<input type="text" disabled>
					</td>
					<td><input type="text" name="name"></td>
					<td><input type="text" name="price"></td>
					<td><input type="text" name="count"></td>
					<td><input type="text" name="remark"></td>
					<td><input type="submit" value="确认添加"></td>
					
				</tr>
			
		  </table>
		  </form>
		  
	<!--footer-end-->	
</body>
</html>