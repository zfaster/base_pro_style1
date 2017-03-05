package com.sys.service.student.impl;

import com.sys.bean.student.Card;
import com.sys.bean.student.Student;
import com.sys.enums.CostType;
import com.sys.service.base.DaoSupport;
import com.sys.service.cost.CostItemService;
import com.sys.service.student.CardService;
import com.sys.service.student.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service("cardService")
public class CardServiceImpl extends DaoSupport<Card> implements
        CardService {

    @Autowired
    private CostItemService costItemService;
    @Override
    public void cost(Integer cardId, BigDecimal money, CostType type){
        Card card = find(cardId);
        card.setMoney(card.getMoney().subtract(money));
        if(card.getMoney().compareTo(BigDecimal.ZERO)<0){
            throw new RuntimeException("卡内余额不足无法消费");
        }
        costItemService.createItem(type,money,cardId);
    }
    @Override
    public void store(Integer cardId, BigDecimal money){
        Card card = find(cardId);
        card.setMoney(card.getMoney().add(money));
        costItemService.createItem(CostType.SAVE,money,cardId);
    }
}
