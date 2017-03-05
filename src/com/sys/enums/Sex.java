package com.sys.enums;

/**
 * 宿舍状态
 */
public enum Sex {
    WOMEN("女"),
    /**
     * 欠费
     */
    MAN("男");
    private String name;

    Sex(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
