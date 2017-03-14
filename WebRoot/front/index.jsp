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
		<div id="header">
			<div id="headertop">
				<a href="#" class="replace" id="logo"><span></span>Rushhour - Your Company Slogan</a>
				<div id="loginarea">
					<p class="notlogin">您尚未登录</p>
					<p class="loginbut"><a href="#" class="butlogin" id="butslide">登录</a> <span>or</span> <a href="#" class="butlogin">注册</a></p>
					<div id="panellogin">
						<form method="post" action="#" id="frmlogin">
							<div>
								<label for="lgnusername">用户名:</label> <input type="text" name="username" class="textboxlogin" id="lgnusername" /><br />
								<label for="lgnpassword">密码:</label> <input type="text" name="password" class="textboxlogin" id="lgnpassword" /><br />
								<label></label> <input type="submit" name="submitlogin" class="submitlogin" value="登录" />
							</div>
						</form>
					</div>
				</div>
			</div>
			<div id="placemainmenu">
				<ul id="mainmenu">
					<li class="active"><a href="index.jsp">首页</a></li>
					<li><a href="aboutus.html">校友留言</a></li>
					<li><a href="newslist.html">校友录</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
		<div id="content">
			<div id="intro">
				<h2>欢迎使用校友录管理系统，请先登录或注册</h2>
			</div>
			<div class="clear"></div>
		</div>
		<div id="footer">
			<p id="texttwitter"></p>
			<ul id="menufooterright">
				<li>校友录管理系统</li>
				<li class="last"><a href="#">返回顶部</a></li>
			</ul>
		</div>
	</div>
</div>

</body>
</html>