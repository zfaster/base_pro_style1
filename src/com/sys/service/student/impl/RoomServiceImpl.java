package com.sys.service.student.impl;

import com.sys.bean.student.Card;
import com.sys.bean.student.Room;
import com.sys.enums.CostType;
import com.sys.service.base.DaoSupport;
import com.sys.service.cost.CostItemService;
import com.sys.service.student.CardService;
import com.sys.service.student.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service("roomService")
public class RoomServiceImpl extends DaoSupport<Room> implements
        RoomService {

    @Autowired
    private CardService cardService;
    @Autowired
    private CostItemService costItemService;

    /**
     * 用一卡通余额进行缴费
     * @param roomId
     * @param cardId
     * @param money
     */
    @Override
    public void addMoneyToRoom(Integer roomId, Integer cardId, BigDecimal money){
        Room room = get(roomId);
        cardService.cost(cardId,money,CostType.ENERGY);
        room.setPrepay(room.getPrepay().add(money));
        update(room);
    }
}
