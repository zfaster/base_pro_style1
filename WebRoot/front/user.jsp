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
	<title>校友录-我的信息</title>
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
	<script src="/js/vilidata.js" type="text/javascript"></script>
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
<script>
	function register() {
		if(!$('#realname').val()){
			alert('姓名不可为空');
			return;
		}
		if(!isChina($('#realname').val())){
			alert('姓名必须输入中文');
			return;
		}
		if(!$('#phone').val()){
			alert('电话不可为空');
			return;
		}
		if(!$('#phone').val().isPhoneNum()){
			alert('电话号码格式错误');
			return;
		}
		if(!$('#address').val()){
			alert('地址不可为空');
			return;
		}
		$('#frmcontact').submit();
	}
</script>
<div id="container">
	<div id="wrapper">
		<jsp:include page="common/header.jsp"/>
		<div id="content">
			<div id="maincontent">
				<div class="boxbig">
					<h1 class="titlebig">用户信息修改</h1>
					<div class="boxbigcontent">
						<form method="post" action="${ctx}/front/student!modify" enctype="multipart/form-data"  id="frmcontact">
							<div>
								<label>姓名:</label> <input type="text" id="realname" name="student.realname" value="<s:property value="#session.student.realname"/>" class="textboxcontact"/> <br />
								<label >电话:</label> <input type="text" id="phone" name="student.phone" value="<s:property value="#session.student.phone"/>" class="textboxcontact" /><br />
								<label>地址:</label> <input type="text" id="address" name="student.address" value="<s:property value="#session.student.address"/>" class="textboxcontact"  /><br />
								<label>头像:</label> <input type="file"  name="image" class="textboxcontact"  /><br />
								<br />

								<%--<label for="txtmessage">Message:</label> <textarea cols="50" rows="10" name="message" id="txtmessage" class="textareacontact"></textarea><br />
								--%>
								<label></label><input type="button" onclick="register()" name="submitcontact" value="信息修改" class="submitcontact" />
							</div>
						</form>
					</div>
					<div class="boxbigcontentbottom"></div>
				</div>
			</div>

			<div class="clear"></div>
		</div>
		<jsp:include page="common/footer.jsp"/>
	</div>
</div>

</body>
</html>