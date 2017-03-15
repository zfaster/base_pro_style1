<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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