package com.sys.service.cost;

import com.sys.bean.cost.WaterLog;
import com.sys.bean.student.Student;
import com.sys.service.base.DAO;

public interface WaterLogService extends DAO<WaterLog> {
    void beginUseWater(Integer cardId);

    WaterLog endUseWater(Integer cardId);
}
