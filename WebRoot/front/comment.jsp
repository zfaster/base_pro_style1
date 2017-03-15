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
	<title>Your Website Title</title>
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
<p><a class="skiplink" href="#maincontent">Skip over navigation</a></p>
<div id="container">
	<div id="wrapper">
		<jsp:include page="common/header.jsp"/>
		<div id="content">
			<div id="maincontent">
				<div class="boxbig">
					<h1 class="titlebig">校友留言</h1>
					<div class="boxbigcontent">
						<ul id="listcomment">
							<li>
								<img src="images/default_avatar.png" alt="Avatar" class="imgavatar" />
								<div class="placecomment">
									<h3><strong>John Doe</strong>, September 29th 2009</h3>
									<p>Vestibulum sed mauris in nisi suscipit ullamcorper sit amet vel dui. Praesent commodo feugiat lectus, eget hendrerit risus viverra a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec placerat, mi eu posuere facilisis, dolor sapien auctor orci, vel posuere velit nibh ac tortor. Suspendisse velit erat, sodales id iaculis non, dapibus ut lacus. Nulla facilisi. Ut dui sapien, vulputate id tincidunt nec, semper quis arcu.<br /><br />
										Vestibulum sed mauris in nisi suscipit ullamcorper sit amet vel dui. Praesent commodo feugiat lectus, eget hendrerit risus viverra a.
									</p>
								</div>
								<div class="clear"></div>
							</li>
							<li>
								<img src="images/default_avatar.png" alt="Avatar" class="imgavatar" />
								<div class="placecomment">
									<h3><strong>John Doe</strong>, September 29th 2009</h3>
									<p>Vestibulum sed mauris in nisi suscipit ullamcorper sit amet vel dui. Praesent commodo feugiat lectus, eget hendrerit risus viverra a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec placerat, mi eu posuere facilisis, dolor sapien auctor orci, vel posuere velit nibh ac tortor. Suspendisse velit erat, sodales id iaculis non, dapibus ut lacus. Nulla facilisi. Ut dui sapien, vulputate id tincidunt nec, semper quis arcu.
									</p>
								</div>
								<div class="clear"></div>
							</li>
						</ul>
						<h2 class="subtitle">发表留言</h2>
						<form method="post" action="#" id="frmcomment">
							<div>
								<label for="lblcomment">内容 </label>
								<textarea name="comment" cols="80" rows="10" id="lblcomment" class="textareacomment"></textarea><br />
								<input type="submit" name="submitcomment" class="submitcomment" value="发表留言" />
							</div>
						</form>
					</div>
					<div class="boxbigcontentbottom"></div>
				</div>
			</div>
			<div id="nav">
				<div class="boxnav">
					<h3 class="titlenav">同班校友</h3>
					<div class="boxnavcontent">
						<ul id="listads">
							<li><a href="#"><img src="images/ads_1.jpg" alt="GraphicRiver" /></a></li>
							<li><a href="#"><img src="images/ads_2.jpg" alt="ThemeForest" /></a></li>
							<li><a href="#"><img src="images/ads_3.jpg" alt="AudioJungle" /></a></li>
							<li><a href="#"><img src="images/ads_4.jpg" alt="VideoHive" /></a></li>
						</ul>
						<div class="clear"></div>
						<a href="#" class="linkadv">Advertise Here</a>
						<div class="clear"></div>
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