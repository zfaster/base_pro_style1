package com.sys.service.student;

import com.sys.bean.student.Room;
import com.sys.service.base.DAO;

import java.math.BigDecimal;

public interface RoomService extends DAO<Room> {
    void addMoneyToRoom(Integer roomId, Integer cardId, BigDecimal money);
}
