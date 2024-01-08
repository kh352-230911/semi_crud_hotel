package com.sh.crud.order.model.entity;

import java.time.LocalDateTime;

public class Order {
    private int orderNum;
    private String orderMemberId;
    private int orderRoomNum;
    private String orderName;
    private LocalDateTime checkInDate;
    private LocalDateTime checkOutDate;
    private LocalDateTime orderDate;
    private int orderTourNum;

    public Order() {
    }

    public Order(int orderNum, String orderMemberId, int orderRoomNum, String orderName, LocalDateTime checkInDate, LocalDateTime checkOutDate, LocalDateTime orderDate, int orderTourNum) {
        this.orderNum = orderNum;
        this.orderMemberId = orderMemberId;
        this.orderRoomNum = orderRoomNum;
        this.orderName = orderName;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
        this.orderDate = orderDate;
        this.orderTourNum = orderTourNum;
    }

    public int getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    public String getOrderMemberId() {
        return orderMemberId;
    }

    public void setOrderMemberId(String orderMemberId) {
        this.orderMemberId = orderMemberId;
    }

    public int getOrderRoomNum() {
        return orderRoomNum;
    }

    public void setOrderRoomNum(int orderRoomNum) {
        this.orderRoomNum = orderRoomNum;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public LocalDateTime getCheckInDate() {
        return checkInDate;
    }

    public void setCheckInDate(LocalDateTime checkInDate) {
        this.checkInDate = checkInDate;
    }

    public LocalDateTime getCheckOutDate() {
        return checkOutDate;
    }

    public void setCheckOutDate(LocalDateTime checkOutDate) {
        this.checkOutDate = checkOutDate;
    }

    public LocalDateTime getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }

    public int getOrderTourNum() {
        return orderTourNum;
    }

    public void setOrderTourNum(int orderTourNum) {
        this.orderTourNum = orderTourNum;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderNum=" + orderNum +
                ", orderMemberId='" + orderMemberId + '\'' +
                ", orderRoomNum=" + orderRoomNum +
                ", orderName='" + orderName + '\'' +
                ", checkInDate=" + checkInDate +
                ", checkOutDate=" + checkOutDate +
                ", orderDate=" + orderDate +
                ", orderTourNum=" + orderTourNum +
                '}';
    }
}
