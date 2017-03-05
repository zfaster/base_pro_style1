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
                <td width="94%" ><span class="STYLE1"> 消费列表</span></td>
              </tr>
            </table></td>
            <td><div align="right"><span class="STYLE1">
<s:if test="!read">
             &nbsp;&nbsp;<img src="control/images/add.gif" width="10" height="10" /><a href="javascript:openWin('${actionPath}!updateInput?costType=${costType}','添加',600,200,1)">添加</a>
    </s:if>
    </span><span class="STYLE1"> &nbsp;</span></div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
  	<td>
<s:if test="!read">
  		<form action="control/cost/costItem" method="get">
  		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  			<tr>
  				<td align="right">卡号：</td>
  				<td width="160px"><input type="text" name="cardNo" value="<s:property value="cardNo"/>">
                    <input type="hidden" name="costType" value="<s:property value="costType"/>">
                </td>

  				<td><input type="submit" class="buttom" name="submit" value="查询"></td>
  			</tr>
  		</table>
  		</form>
    </s:if>
  	</td>
  </tr>
  <tr>
    <td>
    <table width="100%" id="contentTable" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
      <tr>
<s:if test="!read">
        <td width="5%" height="20" bgcolor="d3eaef" class="STYLE10"><div align="center">
          <input type="checkbox" name="checkbox" onclick="selectAll(this)"/>
        </div></td>
    </s:if>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">序号</span></div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">消费类型</span></div></td>
          <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">卡号</span></div></td>
          <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">金额(元)</span></div></td>

          <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">消费时间</span></div></td>

      </tr>
      <s:if test="pm.datas != null">
      <s:iterator value="pm.datas" var="obj" status="sta">
      <tr>
          <s:if test="!read">
        <td height="5%" bgcolor="#FFFFFF"><div align="center">
          <input type="checkbox" name="id" value="<s:property value="#obj.id"/>"/>
        </div></td>
          </s:if>
        <td height="10%" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#sta.index+1"/></div></td>
        <td height="15%" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#obj.costType.name"/></div></td>
          <td height="15%" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:property value="#obj.card.no"/></div></td>
          <td height="10%" bgcolor="#FFFFFF" class="STYLE19"><div align="center">
              <s:if test="#obj.costType.name()=='SAVE'"><span style="color: green">+<s:property value="#obj.costMoney"/></span></s:if>
              <s:else><span style="color: red">-<s:property value="#obj.costMoney"/></span></s:else>

          </div></td>
          <td height="10%" bgcolor="#FFFFFF" class="STYLE19"><div align="center"><s:date name="#obj.costTime" format="yyyy-MM-dd HH:mm:ss"/> </div></td>
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
			<jsp:param name="url" value="control/cost/costItem"/>
			<jsp:param name="params" value="cardNo,costType,read"/>
		</jsp:include>
    </td>
 </tr>
</table>
</body>
</html>

