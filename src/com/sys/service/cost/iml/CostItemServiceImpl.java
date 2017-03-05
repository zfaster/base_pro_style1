package com.sys.service.cost.iml;

import com.sys.bean.cost.CostItem;
import com.sys.enums.CostType;
import com.sys.service.base.DaoSupport;
import com.sys.service.cost.CostItemService;
import com.sys.service.student.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service("costItemService")
public class CostItemServiceImpl extends DaoSupport<CostItem> implements
        CostItemService {

    @Autowired
    private CardService cardService;
    @Override
    public void createItem(CostType type, BigDecimal money, Integer cardId) {
        CostItem costItem = new CostItem();
        costItem.setCostType(type);
        costItem.setCostMoney(money);
        costItem.setCard(cardService.find(cardId));
        save(costItem);
    }
}
