package com.sys.service.student;

import com.sys.bean.student.Card;
import com.sys.bean.student.Student;
import com.sys.enums.CostType;
import com.sys.service.base.DAO;

import java.math.BigDecimal;

public interface CardService extends DAO<Card> {
    void cost(Integer cardId, BigDecimal money, CostType type);

    void store(Integer cardId, BigDecimal money);
}
