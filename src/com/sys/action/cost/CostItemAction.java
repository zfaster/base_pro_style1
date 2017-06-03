package com.sys.action.cost;

import com.sys.bean.cost.CostItem;
import com.sys.enums.CostType;
import com.sys.service.base.DAO;
import com.sys.service.cost.CostItemService;
import com.sys.service.student.CardService;
import com.sys.web.action.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;
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
public class CostItemAction extends BaseAction<CostItem> {
    private String actionPath = "control/cost/costItem";
    private String cardNo;
    private boolean read;
    private Integer cardId;
    private CostType costType;
    @Autowired
    private CardService cardService;
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
        if(cardId!=null){
            whereSql.append("and o.card.id = ? ");
            params.add(cardId);
        }
        if(costType!=null){
            whereSql.append("and o.costType = ? ");
            params.add(costType);
        }
        pm = baseService.findScrollData(
                orderBy,whereSql.toString(),params.toArray());
        setPageInfo();
        return SUCCESS;
    }

    @Override
    public String update() throws Exception {
        cardService.cost(object.getCard().getId(),object.getCostMoney(),object.getCostType());
        return "update_success";
    }

    @Resource(name="costItemService")
    public void setBaseService(DAO baseService) {
        this.baseService = baseService;
    }

    public String getActionPath() {
        return actionPath;
    }

    public void setActionPath(String actionPath) {
        this.actionPath = actionPath;
    }

    public boolean isRead() {
        return read;
    }

    public void setRead(boolean read) {
        this.read = read;
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

    public CostType getCostType() {
        return costType;
    }

    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    public void setCostType(CostType costType) {
        this.costType = costType;
    }
}
