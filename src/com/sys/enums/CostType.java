package com.sys.enums;

/**
 * 宿舍状态
 */
public enum CostType {
    SAVE("充值"),
    ENERGY("电费"),
    WATER("水费"),
    SHOP("超市购物"),
    EAT("餐厅消费"),
    BOOK("图书借阅超期");

    private String name;

    CostType(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
