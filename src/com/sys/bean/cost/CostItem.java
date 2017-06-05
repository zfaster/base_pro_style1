package com.sys.bean.cost;

import com.sys.bean.student.Card;
import com.sys.enums.CostType;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by Zhangzy on 2017/3/4.
 */
@Entity
@Table(name = "t_cost_item")
public class CostItem {
    @Id
    @GeneratedValue
    private Integer id;
    @Enumerated
    @Column(name = "cost_type")
    private CostType costType;
    @Column(name = "cost_time")
    private Date costTime = new Date();
    @Column(name = "cost_money")
    private BigDecimal costMoney;
    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name="card_id")
    private Card card;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public CostType getCostType() {
        return costType;
    }

    public void setCostType(CostType costType) {
        this.costType = costType;
    }

    public Date getCostTime() {
        return costTime;
    }

    public void setCostTime(Date costTime) {
        this.costTime = costTime;
    }

    public BigDecimal getCostMoney() {
        return costMoney;
    }

    public void setCostMoney(BigDecimal costMoney) {
        this.costMoney = costMoney;
    }

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
    }
}
