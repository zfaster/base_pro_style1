package com.sys.bean.school;

import com.sys.bean.privilege.Employee;

import javax.persistence.*;

/**
 * 班级
 */
@Entity
@Table(name = "t_class_room")
public class ClassRoom {
    @Id
    @GeneratedValue
    private Integer id;
    @Column
    private String name;
    @ManyToOne
    @JoinColumn(name = "employee_id")
    private Employee employee;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
}
