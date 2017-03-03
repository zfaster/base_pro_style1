package com.sys.action.privilege;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.sys.bean.privilege.Department;
import com.sys.service.base.DAO;
import com.sys.web.action.BaseAction;
@Controller
@Scope("prototype")
public class DepartmentAction extends BaseAction<Department> {

	private String name;
	private boolean select;
	private String actionPath = "control/privilege/department";
	@Override
	public String execute() throws Exception {
		LinkedHashMap<String, String> orderBy = new LinkedHashMap<String, String>();
		orderBy.put("id", "asc");
		StringBuffer whereSql = new StringBuffer(" 1 = 1 ");
		List<Object> params = new ArrayList<Object>();
		if(name != null && !"".equals(name)){
			whereSql.append("and o.name like ? ");
			params.add("%"+name+"%");
		}
		pm = baseService.findScrollData(
				orderBy,whereSql.toString(),params.toArray());
		setPageInfo();
		if(select){
			return "select";
		}
		return SUCCESS;
	}
	public String delete() throws Exception {
		return super.delete();
	}
	
	@Resource(name="departmentService")
	public void setBaseService(DAO baseService) {
		this.baseService = baseService;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		try {
			this.name = new String(name.getBytes("iso8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	public boolean isSelect() {
		return select;
	}
	public void setSelect(boolean select) {
		this.select = select;
	}
	public String getActionPath() {
		return actionPath;
	}
	public void setActionPath(String actionPath) {
		this.actionPath = actionPath;
	}

}
