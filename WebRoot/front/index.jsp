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
		DD_belatedPNG.fix('#logo span, #loginarea, #panellogin, .textboxlogin, #shadowslideshow, img');
	</script>
	<![endif]-->
	<!--[if IE 7]><style type="text/css">@import "style/ie7.css";</style><![endif]-->
	<script src="script/jquery.js" type="text/javascript"></script>
	<script src="script/ui_core.js" type="text/javascript"></script>
	<script src="script/ui_tabs.js" type="text/javascript"></script>
	<script src="script/lightbox.js" type="text/javascript"></script>
	<script src="script/easing.js" type="text/javascript"></script>
	<script src="script/jcarousel.js" type="text/javascript"></script>
	<script src="script/slideshow.js" type="text/javascript"></script>
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
			<div id="intro">
				<h2>欢迎使用校友录管理系统，请先登录或注册</h2>
			</div>
			<div class="clear"></div>
		</div>
		<jsp:include page="common/footer.jsp"/>
	</div>
</div>

</body>
</html>