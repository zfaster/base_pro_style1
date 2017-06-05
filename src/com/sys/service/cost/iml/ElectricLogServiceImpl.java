package com.sys.service.cost.iml;

import com.sys.bean.cost.ElectricLog;
import com.sys.bean.student.Room;
import com.sys.service.base.DaoSupport;
import com.sys.service.cost.ElectricLogService;
import com.sys.service.student.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service("electricLogService")
public class ElectricLogServiceImpl extends DaoSupport<ElectricLog> implements
        ElectricLogService {
    @Autowired
    private RoomService roomService;

    @Override
    public void useElectric(Integer roomId,Float degree,Integer year,Integer month){
        BigDecimal cost = BigDecimal.valueOf(degree*0.55);
        Room room = roomService.find(roomId);
        ElectricLog log = new ElectricLog();
        log.setRoom(room);
        log.setDegree(degree);
        log.setYear(year);
        log.setMonth(month);
        log.setCost(cost);
        save(log);
        room.setPrepay(room.getPrepay().subtract(cost));
        roomService.update(room);
    }
}
