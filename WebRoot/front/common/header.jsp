<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script>
    function login(){
        $.post('${ctx}/front/student!login',{
            username:$('#username').val(),
            password:$('#password').val()
        },function (data) {
            if(data=='success'){
                document.location.reload();
            }else{
                alert(data);
            }
        })
    }
</script>
<div id="header">
    <div id="headertop">
        <a href="#" class="replace" id="logo"><span></span>Rushhour - Your Company Slogan</a>
        <div id="loginarea">
            <s:if test="#session.student==null">
                <p class="notlogin">您尚未登录</p>
                <p class="loginbut"><a href="#" class="butlogin" id="butslide">登录</a> <span>or</span> <a href="${ctx}/front/student!registerInput" class="butlogin">注册</a></p>
                <div id="panellogin">
                    <form method="post" action="#" id="frmlogin">
                        <div>
                            <label for="lgnusername">用户名:</label> <input type="text" id="username" class="textboxlogin" id="lgnusername" /><br />
                            <label for="lgnpassword">密码:</label> <input type="text" id="password" class="textboxlogin" id="lgnpassword" /><br />
                            <label></label> <input type="button" onclick="login()" name="submitlogin" class="submitlogin" value="登录" />
                        </div>
                    </form>
                </div>
            </s:if>
            <s:else>
                <p class="notlogin">欢迎同学，<s:property value="#session.student.realname"/></p>
            </s:else>

        </div>
    </div>
    <div id="placemainmenu">
        <ul id="mainmenu">
            <li <c:if test="${empty param.target}">class="active"</c:if> ><a href="index.jsp">首页</a></li>
            <li <c:if test="${param.target eq 'comment'}">class="active"</c:if> ><a href="comment.jsp">校友留言</a></li>
            <li <c:if test="${param.target eq 'contact'}">class="active"</c:if>><a href="contact.jsp">校友录</a></li>
        </ul>
        <form method="post" action="${ctx}/front/student!searchStudent" id="frmsearch">
            <div>
                <input type="text" name="studentName" class="textboxsearch" placeholder="查找校友"/> <input type="submit" name="submitsearch" class="submitsearch" value="搜索" />
            </div>
        </form>
        <div class="clear"></div>
    </div>
</div>