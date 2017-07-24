﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>

<link href="css/index.css" rel="stylesheet" type="text/css" />
  
<script type="text/javascript" src="js/jquery.1.4.2-min.js"></script>
<script type="text/javascript" src="js/Calculation.js"></script>
<script type="text/javascript">
$(document).ready(function () {

	//jquery特效制作复选框全选反选取消(无插件)
	// 全选        
	$(".allselect").click(function () {
		$(".gwc_tb2 input[name=newslist]").each(function () {
			$(this).attr("checked", true);
			// $(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
		});
		GetCount();
	});

	//反选
	$("#invert").click(function () {
		$(".gwc_tb2 input[name=newslist]").each(function () {
			if ($(this).attr("checked")) {
				$(this).attr("checked", false);
				//$(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
			} else {
				$(this).attr("checked", true);
				//$(this).next().css({ "background-color": "#3366cc", "color": "#000000" });
			} 
		});
		GetCount();
	});

	//取消
	$("#cancel").click(function () {
		$(".gwc_tb2 input[name=newslist]").each(function () {
			$(this).attr("checked", false);
			// $(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
		});
		GetCount();
	});

	// 所有复选(:checkbox)框点击事件
	$(".gwc_tb2 input[name=newslist]").click(function () {
		if ($(this).attr("checked")) {
			//$(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
		} else {
			// $(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
		}
	});

	// 输出
	$(".gwc_tb2 input[name=newslist]").click(function () {
		// $("#total2").html() = GetCount($(this));
		GetCount();
		//alert(conts);
	});
});
//******************

</script>


</head>
<body>

<div class="gwc" style=" margin:auto;">
	<table cellpadding="0" cellspacing="0" class="gwc_tb1">
		<tr>
			<td class="tb1_td1"><input id="Checkbox1" type="checkbox"  class="allselect"/></td>
			<td class="tb1_td1">全选</td>
			<td class="tb1_td3">商品</td>
			<td class="tb1_td4">商品信息</td>
			<td class="tb1_td5">数量</td>
			<td class="tb1_td6">单价</td>
			<td class="tb1_td7">操作</td>
		</tr>
	</table>
	
	   
		<!---商品加减算总数---->
	<c:forEach items="${requestScope.shopcarlist }" var="shopcar" >
		<script type="text/javascript">
		$(function () {
			var t = $("#text_box1");
			
			$("#add1").click(function () {
				t.val(parseInt(t.val()) + 1)
				setTotal(); GetCount();
			})
			$("#min1").click(function () {
				t.val(parseInt(t.val()) - 1)
				setTotal(); GetCount();
			})
			function setTotal() {
	
				$("#total1").html((parseInt(t.val()) * 100).toFixed(2));
				$("#newslist-1").val(parseInt(t.val()) * 9);
			}
			setTotal();
		})
		
		function GetCount() {
			var conts = 0;
			var aa = 0;
			$(".gwc_tb2 input[name=newslist]").each(function () {
				if ($(this).attr("checked")) {
					for (var i = 0; i < $(this).length; i++) {
						conts += parseInt($(this).val());
						aa += 1;
					}
				}
			});
			$("#shuliang").text(aa);
			$("#zong1").html((conts).toFixed(2));
			$("#jz1").css("display", "none");
			$("#jz2").css("display", "block");
		}
		</script>
		<table cellpadding="0" cellspacing="0" class="gwc_tb2">
			<tr>
				<td class="tb2_td1"><input type="checkbox" value="1" name="newslist" id="newslist-1" /></td>
				<td class="tb2_td2"><a href="#"><img src="images/p-1.png"/></a></td>
				<td class="tb2_td3"><a href="#">${shopcar.name }</a></td>
				<td class="tb1_td4">一件</td>
				<td class="tb1_td5">
					<input id="min1" name=""  style=" width:20px; height:18px;border:1px solid #ccc;" type="button" value="-" />
					<input id="text_box1" name="" type="text" value="${shopcar.count }" style=" width:30px; text-align:center; border:1px solid #ccc;" />
					<input id="add1" name="" style=" width:20px; height:18px;border:1px solid #ccc;" type="button" value="+" />
					
				</td>
				<td class="tb1_td6"><label id="total1" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;">111</label></td>
				<td class="tb1_td7"><a href="deleteShopcar/${shopcar.id }">删除</a></td>
			</tr>
		</table>
	</c:forEach>
	
	<!---总数---->
	<script type="text/javascript">
	$(function () {
		$(".quanxun").click(function () {
			setTotal();
			//alert($(lens[0]).text());
		});
		function setTotal() {
			var len = $(".tot");
			var num = 0;
			for (var i = 0; i < len.length; i++) {
				num = parseInt(num) + parseInt($(len[i]).text());

			}
			//alert(len.length);
			$("#zong1").text(parseInt(num).toFixed(2));
			$("#shuliang").text(len.length);
		}
		//setTotal();
	})
	</script>
	<table cellpadding="0" cellspacing="0" class="gwc_tb3">
		<tr>
			<td class="tb1_td1"><input id="checkAll" class="allselect" type="checkbox" /></td>
			<td class="tb1_td1">全选</td>
			<td class="tb3_td1">
				<input id="invert" type="checkbox" />反选
				<input id="cancel" type="checkbox" />取消
			</td>
			<td class="tb3_td2">已选商品 <label id="shuliang" style="color:#ff5500;font-size:14px; font-weight:bold;">0</label> 件</td>
			<td class="tb3_td3">合计(不含运费):<span>￥</span><span style=" color:#ff5500;"><label id="zong1" style="color:#ff5500;font-size:14px; font-weight:bold;"></label></span></td>
			<td class="tb3_td4"><span id="jz1">结算</span><a href="#" style=" display:none;"  class="jz2" id="jz2">结算</a></td>
		</tr>
	</table>

</div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">

</div>
</body>
</html>