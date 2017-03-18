<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@include file="/control/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>校友录</title>
	<meta name="description" content="Website Description" />
	<meta name="keywords" content="Website Kwywords" />
	<style type="text/css" media="all">@import "style/style.css";</style>
	<!--[if lt IE 7]>
	<style type="text/css">@import "style/ie.css";</style>
	<script src="script/DD_belatedPNG.js" type="text/javascript"></script>
	<script type="text/javascript">
		DD_belatedPNG.fix('#logo span, #loginarea, #panellogin, .textboxlogin, img');
	</script>
	<![endif]-->
	<!--[if IE 7]><style type="text/css">@import "style/ie7.css";</style><![endif]-->
	<script src="script/jquery.js" type="text/javascript"></script>
	<script src="script/ui_core.js" type="text/javascript"></script>
	<script src="script/ui_tabs.js" type="text/javascript"></script>
	<script src="script/lightbox.js" type="text/javascript"></script>
	<script src="script/twitter.js" type="text/javascript"></script>
	<script src="script/gettwitter.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			$("#butslide").click(function(){
				$("#panellogin").slideToggle("fast");
				$(this).toggleClass("active"); return false;
			});
			$('#tabsnav').tabs({ fx: { opacity: 'toggle' } });
			$('a.popup').lightBox({fixedNavigation:true});
		});
	</script>
</head>
<body>
<div id="container">
	<div id="wrapper">
		<jsp:include page="common/header.jsp">
			<jsp:param name="target" value="contact"/>
		</jsp:include>
		<div id="content">

			<div id="maincontent">
				<div class="boxbig">
					<h1 class="titlebig">校友录</h1>
					<div class="boxbigcontent">
						<ul id="listgallery">
							<s:iterator value="studentPg.datas" var="obj" status="stat">
								<li
								><a href="images/portfolio_1.jpg" class="popup" title="Photo Gallery Number One">
									<img src="images/img_gal.jpg" alt="Photo" /><br />
									Lorem ipsum dolor</a>
								</li>
							</s:iterator>
							<li><a href="images/portfolio_1.jpg" class="popup" title="Photo Gallery Number Two"><img src="images/img_gal.jpg" alt="Photo" /><br />Donec et quam dolor</a></li>
							<li><a href="images/portfolio_1.jpg" class="popup" title="Photo Gallery Number Three"><img src="images/img_gal.jpg" alt="Photo" /><br />Class aptent taciti sociosqu ad litora</a></li>
							<li><a href="images/portfolio_1.jpg" class="popup" title="Photo Gallery Number Four"><img src="images/img_gal.jpg" alt="Photo" /><br />Suspendisse euismod, risus at adipiscing pretium</a></li>
							<li><a href="images/portfolio_1.jpg" class="popup" title="Photo Gallery Number Five"><img src="images/img_gal.jpg" alt="Photo" /><br />Donec egestas</a></li>
							<li><a href="images/portfolio_1.jpg" class="popup" title="Photo Gallery Number Six"><img src="images/img_gal.jpg" alt="Photo" /><br />Suspendisse euismod</a></li>
							<li><a href="images/portfolio_1.jpg" class="popup" title="Photo Gallery Number Seven"><img src="images/img_gal.jpg" alt="Photo" /><br />Donec egestas</a></li>
							<li><a href="images/portfolio_1.jpg" class="popup" title="Photo Gallery Number Five"><img src="images/img_gal.jpg" alt="Photo" /><br />Donec egestas</a></li>
							<li><a href="images/portfolio_1.jpg" class="popup" title="Photo Gallery Number Six"><img src="images/img_gal.jpg" alt="Photo" /><br />Suspendisse euismod</a></li>
							<li><a href="images/portfolio_1.jpg" class="popup" title="Photo Gallery Number Seven"><img src="images/img_gal.jpg" alt="Photo" /><br />Donec egestas</a></li>
						</ul>

						<div class="clear"></div>
						<ul id="listpages">
							<li class="unclick">&#171; 上一页</li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#" class="active">3</a></li>
							<li class="dotted">....</li>
							<li><a href="#">下一页 &#187;</a></li>
						</ul>
					</div>
					<div class="boxbigcontentbottom"></div>
				</div>
			</div>
			<div id="nav">
				<div class="boxnav">
					<h3 class="titlenav">班级列表</h3>
					<div class="boxnavcontent">
						<ul class="menunav">
							<li><a href="#">Lorem ipsum dolor</a></li>
							<li><a href="#">Sit amet consectetur adipiscing</a></li>
							<li><a href="#">Donec placerat</a></li>
							<li><a href="#">Lorem ipsum dolor</a></li>
							<li><a href="#">Sit amet consectetur adipiscing</a></li>
							<li class="last"><a href="#">Donec placerat</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<jsp:include page="common/footer.jsp"/>
	</div>
</div>

</body>
</html>