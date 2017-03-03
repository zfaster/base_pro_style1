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
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="control/Style/menu.js" type="text/javascript"></script>
<link rel="stylesheet" href="control/Style/default.css" type="text/css" />
<title>后台管理系统</title>
</head>
<body>
<div id="header">
	<img  src="control/images/logo.png" style="float: left;">
	<div style="float: right;">
		<a href="control/privilege/employee!quit"><font color="white">退出</font></a>
	</div>
</div>

<div id="contents">
	<div class="left">
		
		<div class="menu_top"></div>
		<div class="menu" id="TabPage3">
			<ul id="TabPage2">
				<li id="left_tab1" class="Selected" onClick="javascript:border_left('TabPage2','left_tab1');" title="常用">常用</li>
				<li id="left_tab2" onClick="javascript:border_left('TabPage2','left_tab2');" title="日志">日志</li>		
				<li id="left_tab3" onClick="javascript:border_left('TabPage2','left_tab3');" title="相册">相册</li>
				<li id="left_tab7" onClick="javascript:border_left('TabPage2','left_tab7');" title="订阅">订阅</li>
				<li id="left_tab4" onClick="javascript:border_left('TabPage2','left_tab4');" title="文件">文件</li>
				<li id="left_tab5" onClick="javascript:border_left('TabPage2','left_tab5');" title="模板">模板</li>
			</ul>
			<div id="left_menu_cnt">
				<ul id="dleft_tab1">
					<li id="now11"><a href="control/privilege/employee"  target="content1" title="日志管理">员工管理</a></li>
					<li id="now12"><a href="control/privilege/department" target="content1" title="浏览相册">部门管理</a></li>
					<li id="now13"><a href="http://www.mianfeimoban.com/admin-templates/"  target="content1" title="日志评论">日志评论</a></li>
					<li id="now14"><a href="http://www.mianfeimoban.com/admin-templates/" target="content1" title="访客留言">访客留言</a></li>
					<li id="now1a"><a href="http://www.mianfeimoban.com/admin-templates/" target="content1" title="添加订阅">添加订阅</a></li>
					<li id="now1b"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('邀请码',this)" target="content1" title="可用邀请码">可用邀请码</a></li>
					<li id="now1c"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('我的好友',this)" target="content1" title="我的好友">我的好友</a></li>
					<li id="now1d"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('更新数据',this)" target="content1" title="更新数据">更新数据</a></li>
					<li id="now1e"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('博客设置',this)" target="content1" title="博客设置">博客设置</a></li>
					
					<li id="now19"><a href="http://www.mianfeimoban.com/admin-templates/"  target="_blank" title="进入内容管理操作界面"><font color=red>内容管理员</font></a></li>							
											
				</ul>
				<ul id="dleft_tab2" style="display:none;">
					<li id="now23"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('日志管理',this)" target="content1" title="日志管理">日志管理</a></li>
					<li id="now22"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('草稿箱',this)" target="content1" title="草稿箱">草稿箱<span id="sdraft_num"></span></a></li>
					<li id="now28"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('回收站',this)" target="content1" title="回收站">回收站<span id="del_num"></span></a></li>
					<li id="now24"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('日志分类',this)" target="content1" title="日志分类">日志分类</a></li>
					<li id="now25"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('备份日志',this)" target="content1" title="备份日志">备份日志</a></li>
					<li id="now26"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('评论管理',this)" target="content1" title="评论管理">评论管理</a></li>
					<li id="now27"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('留言管理',this)" target="content1" title="留言管理">留言管理</a></li>
					<li id="now29"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('引用通告',this)" target="content1" title="引用通告">引用通告</a></li>
				</ul>
				<ul id="dleft_tab3" style="display:none;">
					<li id="now31"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('我的相册',this)" target="content1" title="浏览相册">浏览相册</a></li>
					<li id="now32"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('相片管理',this)" target="content1" title="相片管理">相片管理</a></li>
					<li id="now33"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('相册分类',this)" target="content1" title="相册分类">相册分类</a></li>
					<li id="now34"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('大头贴',this)" target="content1" title="大头贴">大头贴</a></li>
				</ul>
				<ul id="dleft_tab4" style="display:none;">
					<li id="now41"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('所有文件',this)" target="content1" title="所有文件">所有文件</a></li>
					<li id="now42"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('图片文件',this)" target="content1" title="图片文件">图片文件</a></li>
					<li id="now43"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('压缩文件',this)" target="content1" title="压缩文件">压缩文件</a></li>
					<li id="now44"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('文档文件',this)" target="content1" title="文档文件">文档文件</a></li>
				</ul>
				<ul id="dleft_tab5" style="display:none;">
					<li id="now51"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('选择模板',this)" target="content1" title="选择模板">选择模板</a></li>
					<li id="now52"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('改主模板',this)" target="content1" title="改主模板">改主模板</a></li>
					<li id="now53"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('改副模板',this)" target="content1" title="改副模板">改副模板</a></li>
					<li id="now54"><a href="http://www.mianfeimoban.com/admin-templates/" onClick="go_cmdurl('备份模板',this)" target="content1" title="备份模板">备份模板</a></li>
				</ul>
				<ul id="dleft_tab7" style="display:none;">
				<li>正在加载...</li>	
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="menu_end"></div>
	</div>
	<div class="right">
		<div id="cnt" style="height: 99%">
		  <div id="dTab1" class="Box">
		  <iframe id="content1" src="#" name="content1" frameborder="0" scrolling="auto" style="height: 100%"></iframe>
		  </div>
		</div>
	</div>
	<div class="clear"></div>
</div>

</body>
</html>
