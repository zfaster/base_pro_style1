/**
 * Copyright (c) 2015-2019 http://git.oschina.net/java-home
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.sys.bean.student;

import com.sys.enums.Sex;
import com.sys.system.Renewable;

import javax.persistence.*;

/**
 * Created by Zhangzy on 2017/3/4.
 */
@Entity
@Table(name = "t_student")
public class Student {
    @Id
    @GeneratedValue
    private Integer id;
    @Column
    @Renewable
    private String name;
    @Enumerated
    @Renewable
    private Sex sex;
    @ManyToOne
    @JoinColumn(name="room_id")
    @Renewable
    private Room room;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="card_id")
    private Card card;


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

    public Sex getSex() {
        return sex;
    }

    public void setSex(Sex sex) {
        this.sex = sex;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
    }
}
