/**
 * Copyright (c) 2015-2019 http://git.oschina.net/java-home
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.sys.bean.cost;

import com.sys.bean.student.Room;

import javax.persistence.*;
import java.math.BigDecimal;

/**
 * 用电日志
 */
@Entity
@Table(name = "t_electric_log")
public class ElectricLog {

    @Id
    @GeneratedValue
    private Integer id;
    @Column
    private float degree;
    @Column
    private BigDecimal cost;
    @Column
    private Integer year;
    @Column
    private Integer month;
    @ManyToOne
    @JoinColumn(name="room_id")
    private Room room;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public float getDegree() {
        return degree;
    }

    public void setDegree(float degree) {
        this.degree = degree;
    }

    public BigDecimal getCost() {
        return cost;
    }

    public void setCost(BigDecimal cost) {
        this.cost = cost;
    }

    public Integer getMonth() {
        return month;
    }

    public void setMonth(Integer month) {
        this.month = month;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

}
