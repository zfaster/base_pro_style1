<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/control/common/taglib.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>商品后台管理工作平台</title>
<link rel="stylesheet" href="control/css/common.css" type="text/css"></link>
<script type="text/javascript" src="control/js/public.js"></script>

</head>
<body onload="initTable()">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="94%" valign="bottom"><span class="STYLE1"> 部门列表</span></td>
              </tr>
            </table></td>
            <td><div align="right"><span class="STYLE1">
             &nbsp;&nbsp;<zzy:permission privilege="insert" module="departement"><img src="control/images/add.gif" width="10" height="10" /> <a href="javascript:openWin('control/privilege/department!addInput','添加部门',600,200,1)">添加</a></zzy:permission>   
             &nbsp; <zzy:permission privilege="delete" module="departement"><img src="control/images/del.gif" width="10" height="10" /> <a href="javascript:delAll('control/privilege/department!delete')">删除</a> </zzy:permission>   &nbsp;&nbsp;   &nbsp;
             </span><span class="STYLE1"> &nbsp;</span></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
  	<td>
  		<form action="control/privilege/department" method="get">
  		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  			<tr>
  				<td align="right">部门名称：</td>
  				<td width="160px"><input type="text" name="name" value="<s:property value="name"/>"></td>
  				<td><input type="submit" name="submit" class="buttom" value="查询"></td>
  			</tr>
  		</table>
  		</form>
  	</td>
  </tr>
  <tr>
    <td>
    <table width="100%" id="contentTable" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
      <tr>
        <td width="4%" height="20" bgcolor="d3eaef" class="STYLE10"><div align="center">
          <input type="checkbox" name="checkbox" onclick="selectAll(this)"/>
        </div></td>
        <td width="20" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">编号</span></div></td>
        <td width="40" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">部门名称</span></div></td>
        <td width="40" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">基本操作</span></div></td>
      </tr>
      <s:if test="pm.datas != null">
      <s:iterator value="pm.datas" var="department">
      <tr>
        <td height="20" bgcolor="#FFFFFF"><div align="center">
          <input type="checkbox" name="id" value="<s:property value="#department.id"/>"/>
        </div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#department.id"/></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#department.name"/></div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">
        <zzy:permission privilege="delete" module="departement"><a href="javascript:del('control/privilege/department!delete?ids=<s:property value="#department.id"/>','确定删除吗')" title="">删除</a> |</zzy:permission>
        <zzy:permission privilege="update" module="departement"><a href="javascript:openWin('control/privilege/department!updateInput?id=<s:property value="#department.id"/>','更新部门',600,200,1)" title="">编辑</a></zzy:permission>
        
        </div></td>
      </tr>
      </s:iterator>
      </s:if>
      <s:if test="pm.datas.size()==0">
      <tr>
          <td height="20" colspan="4" bgcolor="#FFFFFF" class="STYLE19"><div align="center">没有部门可以显示</div></td>
      </tr>
      </s:if>
    </table></td>
  </tr>

  <tr>
    <td height="30">
		<jsp:include page="/control/common/pager.jsp">
			<jsp:param name="url" value="control/privilege/department"/>
			<jsp:param name="params" value="name"/>
		</jsp:include>
    </td>
 </tr>
</table>
</body>
</html>

