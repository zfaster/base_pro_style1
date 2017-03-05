/**
 * Copyright (c) 2015-2019 http://git.oschina.net/java-home
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.sys.action.cost;

import com.sys.bean.cost.BookLog;
import com.sys.bean.student.Room;
import com.sys.service.base.DAO;
import com.sys.web.action.BaseAction;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;


@Controller
@Scope("prototype")
public class BookLogAction extends BaseAction<BookLog> {
    private String actionPath = "control/cost/bookLog";
    private String code;
    private boolean select;
    @Override
    public String execute() throws Exception {
        LinkedHashMap<String, String> orderBy = new LinkedHashMap<String, String>();
        orderBy.put("id", "desc");
        StringBuffer whereSql = new StringBuffer(" 1 = 1 ");
        List<Object> params = new ArrayList<Object>();
        if(StringUtils.hasText(code)){
            whereSql.append("and o.bookName like ? ");
            params.add("%"+ code +"%");
        }
        pm = baseService.findScrollData(
                orderBy,whereSql.toString(),params.toArray());
        setPageInfo();
        return SUCCESS;
    }
    @Resource(name="bookLogService")
    public void setBaseService(DAO baseService) {
        this.baseService = baseService;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
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
