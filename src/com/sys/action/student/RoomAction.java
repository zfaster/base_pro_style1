package com.sys.action.student;

import com.sys.bean.student.Room;
import com.sys.service.base.DAO;
import com.sys.service.student.RoomService;
import com.sys.web.action.BaseAction;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;


@Controller
@Scope("prototype")
public class RoomAction extends BaseAction<Room> {
    private String actionPath = "control/student/room";
    private String code;
    private boolean select;
    private BigDecimal money;
    private Integer cardId;
    @Override
    public String execute() throws Exception {
        LinkedHashMap<String, String> orderBy = new LinkedHashMap<String, String>();
        orderBy.put("id", "desc");
        StringBuffer whereSql = new StringBuffer(" 1 = 1 ");
        List<Object> params = new ArrayList<Object>();
        if(StringUtils.hasText(code)){
            whereSql.append("and o.code like ? ");
            params.add("%"+ code +"%");
        }
        pm = baseService.findScrollData(
                orderBy,whereSql.toString(),params.toArray());
        setPageInfo();
        if(select){
            return "select";
        }
        return SUCCESS;
    }

    public String saveMoneyInput(){
        object = baseService.find(id);
        return "saveMoneyInput";
    }

    public String saveMoney(){
        if(money!=null && id !=null){
            ((RoomService)baseService).addMoneyToRoom(id,cardId,money);
            return "update_success";
        }
        throw new RuntimeException("输入参数有误");
    }

    @Resource(name="roomService")
    public void setBaseService(DAO baseService) {
        this.baseService = baseService;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        try {
            this.code = new String(code.getBytes("iso8859-1"),"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
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
