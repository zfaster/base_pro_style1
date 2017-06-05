package com.sys.bean.cost;

import com.sys.bean.student.Card;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 用水记录
 */
@Entity
@Table(name = "t_water_log")
public class WaterLog {
    @Id
    @GeneratedValue
    private Integer id;
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

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
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
}
