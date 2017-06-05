package com.sys.bean.student;

import com.sys.bean.cost.CostItem;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by Zhangzy on 2017/3/4.
 */
@Entity
@Table(name = "t_card")
public class Card {
    @Id
    @GeneratedValue
    private Integer id;
    @Column
    private String no;
    @Column
    private BigDecimal money = BigDecimal.ZERO;
    @Column(name = "create_date")
    private Date createDate = new Date();
    @OneToOne(mappedBy = "card",cascade = CascadeType.MERGE)
    private Student student;
    @OneToMany(mappedBy = "card")
    private List<CostItem> costItemList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public List<CostItem> getCostItemList() {
        return costItemList;
    }

    public void setCostItemList(List<CostItem> costItemList) {
        this.costItemList = costItemList;
    }
}
