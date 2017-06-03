package com.sys.action.cost;

import com.sys.bean.cost.BookLog;
import com.sys.bean.cost.WaterLog;
import com.sys.service.base.DAO;
import com.sys.service.cost.WaterLogService;
import com.sys.web.action.BaseAction;
import org.apache.struts2.ServletActionContext;
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
public class WaterLogAction extends BaseAction<WaterLog> {
    private String actionPath = "control/cost/waterLog";
    private String cardNo;
    private Integer cardId;
    private boolean select;
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

    @Override
    public String update() throws Exception {
        ((WaterLogService)baseService).beginUseWater(cardId);
        return "update_success";
    }

    public void endUseWater() throws Exception {
        WaterLog log = ((WaterLogService)baseService).endUseWater(cardId);
        sendMessage(ServletActionContext.getResponse(),"停止用水，共计消费："+log.getCost()+"元");
    }

    @Resource(name="waterLogService")
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

    public boolean isSelect() {
        return select;
    }

    public void setSelect(boolean select) {
        this.select = select;
    }

    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    public void setActionPath(String actionPath) {
        this.actionPath = actionPath;
    }
}
