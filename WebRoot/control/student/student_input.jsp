<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/control/common/taglib.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="control/css/common.css" type="text/css"/>

<script type="text/javascript" src="control/js/public.js"></script>
<script type="text/javascript" src="control/js/jquery-plus-jquery-ui.js"></script> 
<link type="text/css" rel="stylesheet" charset="utf-8" href="control/css/ui-sui.css" /> 
<link rel="stylesheet" href="control/css/common.css" type="text/css"/>
<script language="javascript" src="<%=request.getContextPath()%>/js/vilidata.js"></script>
<title>信息添加/修改</title>
</head>
<body onload="init()">
	<center>
		<form
			action='${actionPath}!update'
			method="post" enctype="multipart/form-data" onsubmit="return validataTableForm();">
<TABLE class="tableEdit" border="0" cellspacing="1" cellpadding="0"
				style="width:580px;">
				<TBODY>
					<TR>
						<!-- 这里是添加、编辑界面的标题 -->
						<td align="center" class="tdEditTitle">学生信息</TD>
					</TR>
					<TR>
						<td>
								<input type="hidden"  id="object.id" name="id" value="${object.id}">
							<!-- 主输入域开始 -->

							<table class="tableEdit" style="width:600px;" cellspacing="0"
								border="0" cellpadding="0" id="content">
								<tr>
									<td class="tdEditLabel">学生姓名</td>
									<td class="tdEditContent">
									
										<input type="text" name="object.name" notNull="true" value="${object.name }" />
									</td>
									<td class="tdEditLabel">性别</td>
									<td class="tdEditContent">

                                        <s:select list="@com.sys.enums.Sex@values()" name="object.sex" listKey="name()" listValue="getName()"  value="%{object.sex}"></s:select>
									</td>
								</tr>

								<tr>
									<td class="tdEditLabel">宿舍号</td>
									<td class="tdEditContent">
									<input type="text" id="roomName" readonly="readonly" disabled="disabled" value="${object.room.code }">
									<input type="hidden" name="object.room.id" id="roomId" value="${object.room.id }">
									<input type="button" class="buttom"value="选择" onclick="openWin('control/student/room?select=true','房间选择',800,600)"/>
									</td>
								</tr>
							</table> <!-- 主输入域结束 --></td>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE>
				<TR align="center">
					<TD colspan="3" bgcolor="#EFF3F7"><input type="submit"
						name="saveButton" class="buttom" value="保存信息"> <input
						type="button" class="buttom" value="关闭窗口"
						onclick="window.close()">
						<s:fielderror></s:fielderror>
					</TD>
				</TR>
			</TABLE>
		</form>
	</center>
</body>
</html>