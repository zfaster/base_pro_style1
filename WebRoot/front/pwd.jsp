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
	<title>校友录-密码修改</title>
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
		if(!$('#oldpwd').val()){
			alert('老密码不可为空');
			return;
		}
		if(!$('#pwd').val()){
			alert('新密码不可为空');
			return;
		}
		if(!$('#ckpwd').val()){
			alert('确认密码不可为空');
			return;
		}
		if($('#ckpwd').val() != $('#pwd').val()){
			alert('密码输入不一致');
			return;
		}
		$.post('${ctx}/front/student!pwdModify',
				{
					'pwd':$('#pwd').val(),
					'oldpwd':$('#oldpwd').val()
				},function (data) {
					if(data == 'true'){
						alert('密码修改成功，请重新登录');
						document.location = '${ctx}/front/index.jsp'
					}else{
						alert(data);
					}
				})
	}
</script>
<div id="container">
	<div id="wrapper">
		<jsp:include page="common/header.jsp">
			<jsp:param name="target" value="pwd"/>
		</jsp:include>
		<div id="content">
			<div id="maincontent">
				<div class="boxbig">
					<h1 class="titlebig">用户密码修改</h1>
					<div class="boxbigcontent">
						<form method="post" id="frmcontact">
							<div>
								<label>原始密码:</label> <input type="text" id="oldpwd" name="oldpwd"  class="textboxcontact"/> <br />
								<label >新密码:</label> <input type="text" id="pwd" name="pwd" class="textboxcontact" /><br />
								<label>确认密码:</label> <input type="text" id="ckpwd" name="ckpwd"  class="textboxcontact"  /><br />
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