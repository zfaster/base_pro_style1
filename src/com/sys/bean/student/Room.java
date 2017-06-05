package com.sys.bean.student;

import com.sys.enums.RoomStatus;
import com.sys.system.Condition;
import com.sys.system.Renewable;

import javax.persistence.*;
import java.math.BigDecimal;

/**
 * 宿舍
 */
@Entity
@Table(name = "t_room")
public class Room {
    @Id
    @GeneratedValue
    private Integer id;
    @Renewable(label="房号",condition={Condition.NOTNULL},maxLength=20)
    @Column
    private String code;
    /**
     * 预交金额
     */
    @Column
    private BigDecimal prepay = BigDecimal.ZERO;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public BigDecimal getPrepay() {
        return prepay;
    }

    public void setPrepay(BigDecimal prepay) {
        this.prepay = prepay;
    }

    public RoomStatus getStatus() {

        if(prepay.compareTo(BigDecimal.ZERO)<0){
            return RoomStatus.DUE;
        }
        return RoomStatus.NORMAL;
    }

}
