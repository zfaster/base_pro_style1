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
	<title>新闻动态</title>
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
		<jsp:include page="common/header.jsp">
			<jsp:param name="target" value="article"/>
		</jsp:include>
		<div id="content">
			<div id="maincontent">
				<div class="boxbig">
					<h1 class="titlebig">新闻动态</h1>
					<div class="boxbigcontent">
						<ul id="listnews">
							<s:iterator value="pm.datas" var="obj" status="stat">
								<li><h2><a href="${ctx}/front/student!newsDetial?id=<s:property value="#obj.id"/>"><s:property value="#obj.title"/></a></h2>
									<ul class="listinfo">
										<li ><s:date name="#obj.createTime" format="yyyy-MM-dd HH:mm:ss"/></li>
									</ul>
									<p>
                                        <s:if test="#obj.content.length() > 60">
                                            <s:property escape="false" value="#obj.content.substring(0,60)"/>...
                                        </s:if>
                                        <s:else>
                                            <s:property escape="false" value="#obj.content"/>
                                        </s:else> </p>
									<a href="${ctx}/front/student!newsDetial?id=<s:property value="#obj.id"/>" class="linkreadmore">查看全部</a>
									<div class="clear"></div>
								</li>
							</s:iterator>
						</ul>
						<jsp:include page="/front/common/pager.jsp">
							<jsp:param name="url" value="${ctx}/front/student!newsList"/>
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