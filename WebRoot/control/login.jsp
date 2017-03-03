<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@include file="/control/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
</head>
<html>
<style>
	body{
		margin:0px;
		padding:0px;
		background-color:#016aa9;
		overflow:hidden;
		text-align:center;
	}
	#container{
		margin-right:auto;
		margin-left:auto;
		width:999px;
		text-align:left;
	}
	#login{
		background-image:url(control/images/login.gif);
		width:1011px;
		height:443px;
		margin-top:55px;
	}
	#from{
		text-align:center;
		padding-top:244px;
		height:111px;
	}
	#input div{
		margin-bottom:10px;
		font-size:12px;
		margin-left:-22px;
	}
	#input div input{
		width:120px;
		height:14px;
		background-color:#292929;
		border:0px;
		color:#6cd0ff;
	}
	#button input{
		border:0px;
		width:49;
		height:19px;
		color:#6cd0ff;
		background-color:#333;
		margin-right:10px;
		margin-top:10px;
	}
</style>
<script type="text/javascript">
<!--
if(window.parent != window){
	window.parent.location = window.location;
}
//-->
</script>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK href="control/css/login.css" type=text/css rel=stylesheet>
<title>智能计算与信息处理</title>
</head>
<body>
<BODY >

<div id="container">
   		<div id="login">
            <div id="from">
            <form action="control/privilege/employee!login" method="post">
                <div id="input">
                    <div>用户：<input type="text" name="username" /></div>
                   <div> 密码：<input type="password" name="password" /></div>
                 </div>
                 <font size="2" color="red"><s:property value="error"/></font>
                <div id="button">  
                    <input type="submit" value="登入" />
                    <input type="reset" value="重置" />
                </div>
               </form>
              </div>
        </div>
    </div>
    
    
 </BODY>
</html>