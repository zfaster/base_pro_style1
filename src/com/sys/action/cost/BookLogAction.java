package com.sys.action.cost;

import com.sys.bean.cost.BookLog;
import com.sys.bean.student.Room;
import com.sys.service.base.DAO;
import com.sys.service.cost.BookLogService;
import com.sys.web.action.BaseAction;
import org.apache.struts2.ServletActionContext;
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
public class BookLogAction extends BaseAction<BookLog> {
    private String actionPath = "control/cost/bookLog";
    private String cardNo;
    @Override
    public String execute() throws Exception {
        LinkedHashMap<String, String> orderBy = new LinkedHashMap<String, String>();
        orderBy.put("id", "desc");
        StringBuffer whereSql = new StringBuffer(" 1 = 1 ");
        List<Object> params = new ArrayList<Object>();
        if(StringUtils.hasText(cardNo)){
            whereSql.append("and o.card.no like ? ");
            params.add("%"+ cardNo +"%");
        }
        pm = baseService.findScrollData(
                orderBy,whereSql.toString(),params.toArray());
        setPageInfo();
        return SUCCESS;
    }
    public void backBook(){
        BookLog log = null;
        try {
            log = ((BookLogService)baseService).backBook(id);
        } catch (Exception e) {
            sendMessage(ServletActionContext.getResponse(),"图书超期，需要扣费，卡内余额不足，请先充值再试");
            return;
        }
        if(log.getCost().compareTo(BigDecimal.ZERO)>0){
            sendMessage(ServletActionContext.getResponse(),"图书超期，扣费："+log.getCost()+"元");
        }else {
            sendMessage(ServletActionContext.getResponse(),"图书按时归还");
        }
    }
    @Resource(name="bookLogService")
    public void setBaseService(DAO baseService) {
        this.baseService = baseService;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        try {
            this.cardNo = new String(cardNo.getBytes("iso8859-1"),"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public String getActionPath() {
        return actionPath;
    }

    public void setActionPath(String actionPath) {
        this.actionPath = actionPath;
    }
}
