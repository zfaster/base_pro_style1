package com.sys.service.cost;

import com.sys.bean.cost.CostItem;
import com.sys.enums.CostType;
import com.sys.service.base.DAO;

import java.math.BigDecimal;

public interface CostItemService extends DAO<CostItem> {
    void createItem(CostType type, BigDecimal money, Integer cardId);
}
