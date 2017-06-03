package com.sys.action.cost;

import com.sys.bean.cost.BookLog;
import com.sys.bean.cost.ElectricLog;
import com.sys.service.base.DAO;
import com.sys.service.cost.ElectricLogService;
import com.sys.web.action.BaseAction;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;


@Controller
@Scope("prototype")
public class ElectricLogAction extends BaseAction<ElectricLog> {
    private String actionPath = "control/cost/electricLog";
    private String roomCode;
    private boolean select;
    @Override
    public String execute() throws Exception {
        LinkedHashMap<String, String> orderBy = new LinkedHashMap<String, String>();
        orderBy.put("id", "desc");
        StringBuffer whereSql = new StringBuffer(" 1 = 1 ");
        List<Object> params = new ArrayList<Object>();
        if(StringUtils.hasText(roomCode)){
            whereSql.append("and o.room.code like ? ");
            params.add("%"+ roomCode +"%");
        }
        pm = baseService.findScrollData(
                orderBy,whereSql.toString(),params.toArray());
        setPageInfo();
        return SUCCESS;
    }

    @Override
    public String update() throws Exception {
        ((ElectricLogService)baseService).useElectric(object.getRoom().getId(),object.getDegree(),object.getYear(),object.getMonth());
        return "update_success";
    }

    @Resource(name="electricLogService")
    public void setBaseService(DAO baseService) {
        this.baseService = baseService;
    }

    public String getRoomCode() {
        return roomCode;
    }

    public void setRoomCode(String roomCode) {
        try {
            this.roomCode = new String(roomCode.getBytes("iso8859-1"),"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public String getActionPath() {
        return actionPath;
    }

    public boolean isSelect() {
        return select;
    }

    public void setSelect(boolean select) {
        this.select = select;
    }

    public void setActionPath(String actionPath) {
        this.actionPath = actionPath;
    }
}
