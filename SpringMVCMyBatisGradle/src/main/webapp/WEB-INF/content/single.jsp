<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>美度</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="js/jquery-1.11.0.min.js"></script>
<!--Custom-Theme-files-->
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
<script type="text/javascript">
	$(function() {
	
	    var menu_ul = $('.menu_drop > li > ul'),
	           menu_a  = $('.menu_drop > li > a');
	    
	    menu_ul.hide();
	
	    menu_a.click(function(e) {
	        e.preventDefault();
	        if(!$(this).hasClass('active')) {
	            menu_a.removeClass('active');
	            menu_ul.filter(':visible').slideUp('normal');
	            $(this).addClass('active').next().stop(true,true).slideDown('normal');
	        } else {
	            $(this).removeClass('active');
	            $(this).next().stop(true,true).slideUp('normal');
	        }
	    });
	
	});
</script>		
</head>
<body> 
	<!--top-header-->
	<div class="top-header">
		<div class="container">
			<div class="top-header-main">
				<div class="col-md-6 top-header-left">
					<div class="drop">
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-6 top-header-left">
					<div class="cart box_1">
						<a href="checkout.html">
								<img src="images/cart-1.png" alt="" />
						</a>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--top-header-->
	<!--start-logo-->
	<div class="logo">
		<a href="index.html"><h1>Watches</h1></a>
	</div>
	<!--start-logo-->
	<!--bottom-header-->
	<div class="header-bottom">
		<div class="container">
			<div class="header">
				<div class="col-md-9 header-left">
				<div class="top-nav">
					<ul class="memenu skyblue"><li class="active"><a href="index.html">Home</a></li>
						<li class="grid"><a href="#">男</a>
							<div class="mepanel">
								<div class="row">
									<div class="col1 me-one">
										<h4>Shop</h4>
										<ul>
											<li><a href="products.html">New Arrivals</a></li>
											<li><a href="products.html">Blazers</a></li>
											<li><a href="products.html">Swem Wear</a></li>
											<li><a href="products.html">Accessories</a></li>
											<li><a href="products.html">Handbags</a></li>
											<li><a href="products.html">T-Shirts</a></li>
											<li><a href="products.html">Watches</a></li>
											<li><a href="products.html">My Shopping Bag</a></li>
										</ul>
									</div>
									<div class="col1 me-one">
										</div>
								</div>
							</div>
						</li>
						<li class="grid"><a href="#">女</a>
							<div class="mepanel">
								<div class="row">
									<div class="col1 me-one">
										<h4>Shop</h4>
										<ul>
											<li><a href="products.html">New Arrivals</a></li>
											<li><a href="products.html">Blazers</a></li>
											<li><a href="products.html">Swem Wear</a></li>
											<li><a href="products.html">Accessories</a></li>
											<li><a href="products.html">Handbags</a></li>
											<li><a href="products.html">T-Shirts</a></li>
											<li><a href="products.html">Watches</a></li>
											<li><a href="products.html">My Shopping Bag</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li class="grid"><a href="#">儿童</a>
							<div class="mepanel">
								<div class="row">
									<div class="col1 me-one">
										<h4>Shop</h4>
										<ul>
											<li><a href="products.html">New Arrivals</a></li>
											<li><a href="products.html">Blazers</a></li>
											<li><a href="products.html">Swem Wear</a></li>
											<li><a href="products.html">Accessories</a></li>
											<li><a href="products.html">Handbags</a></li>
											<li><a href="products.html">T-Shirts</a></li>
											<li><a href="products.html">Watches</a></li>
											<li><a href="products.html">My Shopping Bag</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-3 header-right"> 
				<div class="search-bar">
					<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
					<input type="submit" value="">
				</div>
			</div>
			<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--bottom-header-->
	<!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li class="active">百达翡丽</li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-single-->
	<div class="single contact">
		<div class="container">
			<div class="single-main">
				<div class="col-md-9 single-main-left">
				<div class="sngl-top">
					<div class="col-md-5 single-top-left">	
						<div class="flexslider">
							  <ul class="slides">
								<li data-thumb="images/s-1.jpg">
									<div class="thumb-image"> <img src="images/s-1.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb="images/s-2.jpg">
									 <div class="thumb-image"> <img src="images/s-2.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb="images/s-3.jpg">
								   <div class="thumb-image"> <img src="images/s-3.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li> 
							  </ul>
						</div>
						<!-- FlexSlider -->
						<script src="js/imagezoom.js"></script>
						<script defer src="js/jquery.flexslider.js"></script>
						<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
						</script>
					</div>	
					<div class="col-md-7 single-top-right">
						<div class="single-para simpleCart_shelfItem">
						<h2>美度</h2>
							<div class="star-on">
								<ul class="star-footer">
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
									</ul>
								
							<div class="clearfix"> </div>
							</div>
							
							<h5 class="item_price">¥ 6500</h5>
							<p>直径38毫米，50米防水，透底，防反射涂层的蓝宝石表镜，日历显示在4-5点之间的。</p>
							<div class="available">
								<ul>
									<li>颜色
										<select>
										<option>银白色</option>
										<option>纯黑</option>
										<option>深棕</option>
										<option>中国红</option>
									</select></li>
								<li class="size-in">尺码<select>
									<option>大</option>
									<option>中</option>
									<option>小</option>
									<option>特大</option>
									<option>特小</option>
								</select></li>
								<div class="clearfix"> </div>
							</ul>
						</div>
							<ul class="tag-men">
								<li><span>附加</span>
								<span class="women1">: 女款,</span></li>
								
								<span class="women1">: CK09</span></li>
							</ul>
								<a href="#" class="add-cart item_add">添加到购物车</a>
							
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="tabs">
					<ul class="menu_drop">
				<li class="item1"><a href="#"><img src="images/arrow.png" alt="">美度介绍</a>
					<ul>
						<li class="subitem1"><a href="#">美度表由George Schaeren于1918年在瑞士苏黎士创立。今天美度表公司总部坐落于瑞士Jura山脉中心的勒克勒尔(Le Locle)小镇。美度表的名字源于西班牙语“Yo mido”,意为“我衡量”。它意在制造一块能成为你亲密朋友的手表，美度表的制表哲学是永恒设计和实用功能相结合而不是追随潮流。旨在制造出一块拥有高品质的材料、精准的机芯并具有卓越防水性能可长时间拥有的手表。美度隶属于世界最大的手表制造和销售商—瑞士斯沃琪集团。主要分布在瑞士、法国、德国、意大利、美国、维尔京群岛、泰国、马来西亚和中国。</a></li>
						<li class="subitem2"><a href="#"> 美度的品牌精神是“灵感印证永恒”，让转瞬即逝的灵感带给人永恒的感动。在美度的发展历程中始终坚持的四项战略是：1.与众不同的风格；2.精准的机械走时；3. 独一无二的Aquadura密封表冠系统；4.百分之百瑞士制造。美度始终坚持着这四项战略要求，从未有过懈怠，并时刻充满着创新动力。</a></li>
						<li class="subitem3"><a href="#">美度表在二十世纪初就进入了中国市场，时称“米度”表，以走时精准的全自动机械计时和优良的防水品质著称。2000年，MIDO在SWATCH集团下以“美度”之名再次进军中国。回归中国市场的美度，时刻充满着非凡的创新能力，将经典之作永恒留驻。 </a></li>
					</ul>
				</li>
				
				<li class="item3"><a href="#"><img src="images/arrow.png" alt="">评论 (10)</a>
					<ul>
						<li class="subitem1"><a href="#">这是有着三十年生命力的产品。为了纪念这一时刻，美度于2006年推出贝伦赛丽新款，它传承了原作经典的造型及风格，表款中清晰且巧妙地透露着优雅，高贵的特质，正如经典弦乐器小提琴一样历经时间的考验。对细节的注重可以通过它饰以美度LOGO的精雕细琢的机芯和自动摆陀，钻石切割的表针得以观察。音乐也如制表一样，真正的经典和美丽在时间的流逝中印证永恒。</a></li>
						<li class="subitem2"><a href="#"> 美度于2006年推出贝伦赛丽新款，它传承了原作经典的造型及风格，表款中清晰且巧妙地透露着优雅，高贵的特质，正如经典弦乐器小提琴一样历经时间的考验。对细节的注重可以通过它饰以美度LOGO的精雕细琢的机芯和自动摆陀，钻石切割的表针得以观察。音乐也如制表一样，真正的经典和美丽在时间的流逝中印证永恒。</a></li>
						<li class="subitem3"><a href="#">钻石切割的表针得以观察。音乐也如制表一样，真正的经典和美丽在时间的流逝中印证永恒。</a></li>
					</ul>
				</li>
				<li class="item5"><a href="#"><img src="images/arrow.png" alt="">Make A Gift</a>
					<ul>
						<li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</a></li>
						<li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
	 		</ul>
				</div>
				<div class="latestproducts">
					<div class="product-one">
						<div class="col-md-4 product-left p-left"> 
							<div class="product-main simpleCart_shelfItem">
								<a href="baida.html" class="mask"><img class="img-responsive zoom-img" src="images/q-1.jpg" alt="" /></a>
								<div class="product-bottom">
									<h3>百达翡丽</h3>
									<p>Explore Now</p>
									<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">665000</span></h4>
								</div>
								<div class="srch">
									<span>-50%</span>
								</div>
							</div>
						</div>
						<div class="col-md-4 product-left p-left"> 
							<div class="product-main simpleCart_shelfItem">
								<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/s-1.jpg" alt="" /></a>
								<div class="product-bottom">
									<h3>美度</h3>
									<p>Explore Now</p>
									<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">6500</span></h4>
								</div>
								<div class="srch">
									<span>-50%</span>
								</div>
							</div>
						</div>
						<div class="col-md-4 product-left p-left"> 
							<div class="product-main simpleCart_shelfItem">
								<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="images/p-3.png" alt="" /></a>
								<div class="product-bottom">
									<h3>Smart Watches</h3>
									<p>Explore Now</p>
									<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">8329</span></h4>
								</div>
								<div class="srch">
									<span>-50%</span>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
				
							</div>						
						</section>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-single-->
	
</body>
</html>