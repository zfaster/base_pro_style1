package com.sys.action.student;

import com.sys.bean.student.Card;
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
public class CardAction extends BaseAction<Card> {
    private String actionPath = "control/student/card";
    private String no;
    @Override
    public String execute() throws Exception {
        LinkedHashMap<String, String> orderBy = new LinkedHashMap<String, String>();
        orderBy.put("id", "desc");
        StringBuffer whereSql = new StringBuffer(" 1 = 1 ");
        List<Object> params = new ArrayList<Object>();
        if(StringUtils.hasText(no)){
            whereSql.append("and o.no like ? ");
            params.add("%"+ no +"%");
        }
        pm = baseService.findScrollData(
                orderBy,whereSql.toString(),params.toArray());
        setPageInfo();
        return SUCCESS;
    }


    @Resource(name="cardService")
    public void setBaseService(DAO baseService) {
        this.baseService = baseService;
    }

    public String getActionPath() {
        return actionPath;
    }

    public void setActionPath(String actionPath) {
        this.actionPath = actionPath;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        try {
            this.no = new String(no.getBytes("iso8859-1"),"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }
}
