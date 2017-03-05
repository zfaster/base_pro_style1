/**
 * Copyright (c) 2015-2019 http://git.oschina.net/java-home
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.sys.action.student;

import com.sys.bean.student.Card;
import com.sys.bean.student.Room;
import com.sys.bean.student.Student;
import com.sys.service.base.DAO;
import com.sys.service.student.CardService;
import com.sys.service.student.StudentService;
import com.sys.web.action.BaseAction;
import org.springframework.beans.factory.annotation.Autowired;
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
public class StudentAction extends BaseAction<Student> {
    private String actionPath = "control/student/student";
    private String name;
    private String cardNo;
    private BigDecimal money;

    private boolean select;
    @Autowired
    private CardService cardService;
    @Override
    public String execute() throws Exception {
        LinkedHashMap<String, String> orderBy = new LinkedHashMap<String, String>();
        orderBy.put("id", "desc");
        StringBuffer whereSql = new StringBuffer(" 1 = 1 ");
        List<Object> params = new ArrayList<Object>();
        if(StringUtils.hasText(name)){
            whereSql.append("and o.name like ? ");
            params.add("%"+ name +"%");
        }
        if(select){
            whereSql.append("and o.card is not null ");
        }
        if(StringUtils.hasText(cardNo)){
            whereSql.append("and o.card.no like ? ");
            params.add("%"+ cardNo +"%");
        }
        pm = baseService.findScrollData(
                orderBy,whereSql.toString(),params.toArray());
        setPageInfo();
        return SUCCESS;
    }

    public String createCardInput(){
        object = baseService.find(id);
        return "createCardInput";
    }
    public String createCard(){
        if(object!=null && object.getId()!=null && object.getCard()!=null && object.getCard().getNo()!=null){
            ((StudentService)baseService).createCard(object.getId(),object.getCard().getNo());
            return "update_success";
        }
        throw new RuntimeException("参数传递错误");
    }

    public String saveCardMoneyInput(){
        object = baseService.find(id);
        return "saveCardMoneyInput";
    }
    public String saveCardMoney(){
        if(object!=null && object.getId()!=null && money!=null){
            ((StudentService)baseService).saveCardMoney(object.getId(),money);
            return "update_success";
        }
        throw new RuntimeException("参数传递错误");
    }
    @Resource(name="studentService")
    public void setBaseService(DAO baseService) {
        this.baseService = baseService;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        try {
            this.name = new String(name.getBytes("iso8859-1"),"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
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

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
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
