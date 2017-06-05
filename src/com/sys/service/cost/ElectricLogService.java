package com.sys.service.cost;

import com.sys.bean.cost.BookLog;
import com.sys.bean.cost.ElectricLog;
import com.sys.service.base.DAO;

public interface ElectricLogService extends DAO<ElectricLog> {
    void useElectric(Integer roomId, Float degree, Integer year, Integer month);
}
