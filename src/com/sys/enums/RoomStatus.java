package com.sys.enums;

/**
 * 宿舍状态
 */
public enum RoomStatus {
    NORMAL("正常"),
    /**
     * 欠费
     */
    DUE("电费拖欠");
    private String name;

    RoomStatus(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
