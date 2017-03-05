package com.sys.service.cost.iml;

import com.sys.bean.cost.BookLog;
import com.sys.bean.cost.WaterLog;
import com.sys.enums.CostType;
import com.sys.service.base.DaoSupport;
import com.sys.service.cost.BookLogService;
import com.sys.service.cost.WaterLogService;
import com.sys.service.student.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.math.BigDecimal;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@Service("waterLogService")
public class WaterLogServiceImpl extends DaoSupport<WaterLog> implements
        WaterLogService {
@Autowired
    private CardService cardService;
    @Override
    public void beginUseWater(Integer cardId) {
        List<WaterLog> list = findScrollDataNoPager(null," o.card.id = ? and o.endTime is null ",new Object[]{cardId});
        if(!CollectionUtils.isEmpty(list)){
            throw new RuntimeException("存在还未结束的用水记录");
        }
        WaterLog log = new WaterLog();
        log.setBeginTime(new Date());
        log.setCard(cardService.find(cardId));
        save(log);
    }

    @Override
    public WaterLog endUseWater(Integer cardId) {
        List<WaterLog> list = findScrollDataNoPager(null," o.card.id = ? and o.endTime is null ",new Object[]{cardId});
        if(CollectionUtils.isEmpty(list)){
            throw new RuntimeException("找不到用水记录");
        }
        WaterLog log = list.get(0);
        log.setEndTime(new Date());
        //计算用了多少钱
        long time = (log.getEndTime().getTime()-log.getBeginTime().getTime())/1000;
        BigDecimal money = BigDecimal.valueOf(time).divide(BigDecimal.valueOf(100));
        log.setCost(money);
        cardService.cost(cardId,log.getCost(), CostType.WATER);
        update(log);
        return log;

    }
}
