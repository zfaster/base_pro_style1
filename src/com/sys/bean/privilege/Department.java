package com.sys.bean.privilege;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.sys.system.Condition;
import com.sys.system.Renewable;

@Entity(name="T_Department")
public class Department {

	@Id @GeneratedValue
	private int id;
	@Column
	@Renewable(label="部门名称",condition={Condition.NOTNULL},maxLength=20)
	private String name;

	@OneToMany(mappedBy="department")
	private Set<Employee> employees = new HashSet<Employee>();
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Employee> getEmployees() {
		return employees;
	}

	public void setEmployees(Set<Employee> employees) {
		this.employees = employees;
	}

}
