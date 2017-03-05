/**
 * Copyright (c) 2015-2019 http://git.oschina.net/java-home
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.sys.bean.cost;

import com.sys.bean.student.Card;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 图书借阅日志
 */
@Entity
@Table(name = "t_book_log")
public class BookLog {
    @Id
    @GeneratedValue
    private Integer id;
    @Column(name = "book_name")
    private String bookName;
    @Column(name = "book_no")
    private String bookNo;
    @Column(name = "begin_time")
    private Date beginTime;
    @Column(name = "end_time")
    private Date endTime;
    @Column
    private BigDecimal cost;
    @ManyToOne
    @JoinColumn(name = "card_id")
    private Card card;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookNo() {
        return bookNo;
    }

    public void setBookNo(String bookNo) {
        this.bookNo = bookNo;
    }

    public Date getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(Date beginTime) {
        this.beginTime = beginTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public BigDecimal getCost() {
        return cost;
    }

    public void setCost(BigDecimal cost) {
        this.cost = cost;
    }

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
    }
}
