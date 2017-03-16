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
	<title>校友录-注册</title>
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
					<h1 class="titlebig">用户注册</h1>
					<div class="boxbigcontent">
						<form method="post" action="#" id="frmcontact">
							<div>
								<label for="txtname">用户名:</label> <input type="text" name="name" class="textboxcontact" id="txtname" /> <br />
								<label for="txtemail">密码:</label> <input type="text" name="email" class="textboxcontact" id="txtemail" /> <br />
								<label for="txtemail">确认密码:</label> <input type="text" name="email" class="textboxcontact" id="txtemail" /> <br />
								<label for="txtphone">电话:</label> <input type="text" name="phone" class="textboxcontact" id="txtphone" /><br />
								<label for="txtphone">地址:</label> <input type="text" name="phone" class="textboxcontact" id="txtphone" /><br />
								<label for="txtphone">班级:</label> <input type="text" name="phone" class="textboxcontact" id="txtphone" /><br />

								<%--<label for="txtmessage">Message:</label> <textarea cols="50" rows="10" name="message" id="txtmessage" class="textareacontact"></textarea><br />
								--%>
								<label></label><input type="submit" name="submitcontact" value="注册" class="submitcontact" />
							</div>
						</form>
					</div>
					<div class="boxbigcontentbottom"></div>
				</div>
			</div>
			<div id="nav">
				<div class="boxnav">
					<h3 class="titlenav">学校班级</h3>
					<div class="boxnavcontent">
						<ul class="menunav">
							<li><a>Lorem ipsum dolor</a></li>
							<li><a>Sit amet consectetur adipiscing</a></li>
							<li><a>Donec placerat</a></li>
							<li><a>Lorem ipsum dolor</a></li>
							<li><a>Sit amet consectetur adipiscing</a></li>
							<li class="last"><a>Donec placerat</a></li>
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