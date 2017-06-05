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
	<title>管理工作平台</title>
<link rel="stylesheet" href="control/css/common.css" type="text/css"></link>
<script type="text/javascript" src="control/js/public.js"></script>
<script type="text/javascript" src="control/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">

function changState(button){
	var idCheckboxs = document.getElementsByName("id");
	var url = "control/privilege/employee!changeState?ids=-1";
	var checkedIds = [];
	for(var i=0; i<idCheckboxs.length; i++){
		if(idCheckboxs[i].checked){
			checkedIds[checkedIds.length] = idCheckboxs[i].value;
		}
	}

	for(var i=0; i<checkedIds.length; i++){
		url = url + "&ids="+checkedIds[i];
	}
	button.disabled = true;
	if(checkedIds.length > 0){
		$.post(url,
  				{
					state: button.name
  				}, function(returnedData, status)
  				{
  					if("success" == status)
  					{
  						if(returnedData=="success"){
  							alert("状态修改");
  	  						button.disabled = false;
  	  						window.location.reload();
  						}else{
  							alert("修改失败");
  							button.disabled = false;
  						}
  						
  					}
  				}
  			);
	}
}
</script>
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
                <td width="94%" ><span class="STYLE1"> 学生信息列表</span></td>
              </tr>
            </table></td>
            <td><div align="right"><span class="STYLE1">
             &nbsp;&nbsp;<img src="control/images/add.gif" width="10" height="10" /><a href="javascript:openWin('${actionPath}!updateInput','添加',600,200,1)">添加</a>
             &nbsp;   &nbsp;
             <img src="control/images/del.gif" width="10" height="10" /> <a href="javascript:delAll('${actionPath}!delete','ids')">删除</a>    &nbsp;&nbsp;   &nbsp;
             </span><span class="STYLE1"> &nbsp;</span></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
  	<td>
  		<form action="control/student/student" method="get">
  		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  			<tr>
  				<td align="right">学生姓名：</td>
  				<td width="160px"><input type="text" name="name" value="<s:property value="name"/>"></td>
                <td align="right">卡号：</td>
                <td width="160px"><input type="text" name="cardNo" value="<s:property value="cardNo"/>"></td>
  				<td><input type="submit" class="buttom" name="submit" value="查询"></td>
  			</tr>
  		</table>
  		</form>
  	</td>
  </tr>
  <tr>
    <td>
    <table width="100%" id="contentTable" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
      <tr>
        <td width="5%" height="20" bgcolor="d3eaef" class="STYLE10"><div align="center">
          <input type="checkbox" name="checkbox" onclick="selectAll(this)"/>
        </div></td>
        <td width="3%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">序号</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">宿舍号</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">姓名</span></div></td>
          <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">性别</span></div></td>
          <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">卡号</span></div></td>
          <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">余额</span></div></td>
          <td width="20%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">基本操作</span></div></td>
      </tr>
      <s:if test="pm.datas != null">
      <s:iterator value="pm.datas" var="obj" status="sta">
      <tr>
        <td height="5%" bgcolor="#FFFFFF"><div align="center">
          <input type="checkbox" name="id" value="<s:property value="#obj.id"/>"/>
        </div></td>
        <td height="3%" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#sta.index+1"/></div></td>
        <td height="15%" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#obj.room.code"/></div></td>
        <td height="20%" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#obj.name"/></div></td>
          <td height="10%" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#obj.sex.name"/></div></td>
          <td height="10%" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#obj.card.no"/></div></td>
          <td height="10%" bgcolor="#FFFFFF" class="STYLE19">
          <s:if test="#obj.card!=null">
              <div align="center"><s:property value="#obj.card.money"/></div>
          </s:if>
          </td>
          <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">
              <a href="javascript:del('${actionPath}!delete?ids=<s:property value="#obj.id"/>')" title="">删除</a> |
              <s:if test="#obj.card==null">
                  <a href="javascript:openWin('${actionPath}!createCardInput?id=<s:property value="#obj.id"/>','办卡',600,200,1)" title="">办卡</a> |
              </s:if>
              <s:if test="#obj.card!=null">
                  <a href="javascript:openWin('${actionPath}!saveCardMoneyInput?id=<s:property value="#obj.id"/>','一卡通充值',600,200,1)" title="">充值</a>|
                  <a href="javascript:openWin('control/cost/costItem?cardId=<s:property value="#obj.card.id"/>&read=true','消费记录',700,350,1)" title="">消费记录</a>|
              </s:if>
              <a href="javascript:openWin('${actionPath}!updateInput?id=<s:property value="#obj.id"/>','更新',600,200,1)" title="">编辑</a>
        </div>
        </td>
      </tr>
      </s:iterator>
      </s:if>
      <s:if test="pm.datas.size()==0">
      <tr>
          <td height="20" colspan="15" bgcolor="#FFFFFF" class="STYLE19"><div align="center">没有记录可以显示</div></td>
      </tr>
      </s:if>
    </table></td>
  </tr>

  <tr>
    <td height="30">
		<jsp:include page="/control/common/pager.jsp">
			<jsp:param name="url" value="control/student/student"/>
			<jsp:param name="params" value="code"/>
		</jsp:include>
    </td>
 </tr>
</table>
</body>
</html>

