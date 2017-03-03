package com.sys.service.employee.impl;

import java.io.Serializable;

import org.springframework.stereotype.Service;

import com.sys.bean.privilege.Department;
import com.sys.bean.privilege.Employee;
import com.sys.service.base.DaoSupport;
import com.sys.service.employee.DepartmentService;
@Service("departmentService")
public class DepartmentServiceImpl extends DaoSupport<Department> implements
		DepartmentService {

	@Override
	public void delete(Serializable... entityId) {
		for(Serializable id :  entityId){
			Department department = this.find(id);
			if(department.getEmployees() != null){
				for(Employee employee : department.getEmployees()){
					employee.setDepartment(null);
				}
			}
			super.delete(id);
		}
	}


}
