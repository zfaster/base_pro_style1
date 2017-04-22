<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@include file="/control/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<base href="<%=basePath%>">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>风采人物</title>
	<meta name="description" content="Website Description" />
	<meta name="keywords" content="Website Kwywords" />
    <style type="text/css" media="all">@import "front/style/style.css";</style>
	<!--[if lt IE 7]>
	<style type="text/css">@import "front/style/ie.css";</style>
    <script src="front/script/DD_belatedPNG.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('#logo span, #loginarea, #panellogin, .textboxlogin, #shadowslideshow, img');
    </script>
    <![endif]-->
    <!--[if IE 7]><style type="text/css">@import "front/style/ie7.css";</style><![endif]-->
    <script src="front/script/jquery.js" type="text/javascript"></script>
    <script src="front/script/ui_core.js" type="text/javascript"></script>
    <script src="front/script/ui_tabs.js" type="text/javascript"></script>
    <script src="front/script/lightbox.js" type="text/javascript"></script>
    <script src="front/script/easing.js" type="text/javascript"></script>
    <script src="front/script/jcarousel.js" type="text/javascript"></script>
    <script src="front/script/slideshow.js" type="text/javascript"></script>
    <script src="front/script/twitter.js" type="text/javascript"></script>
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
		<jsp:include page="common/header.jsp">
			<jsp:param name="target" value="star"/>
		</jsp:include>
		<div id="content">
			<div id="maincontent">
				<div class="boxbig">
					<h1 class="titlebig">风采人物</h1>
					<div class="boxbigcontent">
						<ul id="listnews">
                            <s:iterator value="pm.datas" var="obj" status="stat">
                                <li><h2>
                                    <img src="<s:property value="#obj.imagePath"/>" style="float: left" width="100" height="120" />
                                    <s:property value="#obj.name"/></h2><s:property value="#obj.type"/>
                                    <p><s:property value="#obj.intro"/></p>
                                    <div class="clear"></div>
                                </li>
                            </s:iterator>

						</ul>
						<jsp:include page="/front/common/pager.jsp">
							<jsp:param name="url" value="${ctx}/front/student!starList"/>
						</jsp:include>
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