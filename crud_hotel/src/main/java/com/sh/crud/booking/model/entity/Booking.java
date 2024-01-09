package com.sh.crud.booking.model.entity;

import java.time.LocalDateTime;

public class Booking {

    private int bookingNum;
    private String bookingMemberId;
    private String bookingRoomNum;
    private String bookingName;
    private LocalDateTime checkInDate;
    private LocalDateTime checkOutDate;
    private int bookingTourNum;



    public Booking() {
    }

    public Booking(int bookingNum, String bookingMemberId, String bookingRoomNum, String bookingName, LocalDateTime checkInDate, LocalDateTime checkOutDate, int bookingTourNum) {
        this.bookingNum = bookingNum;
        this.bookingMemberId = bookingMemberId;
        this.bookingRoomNum = bookingRoomNum;
        this.bookingName = bookingName;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
        this.bookingTourNum = bookingTourNum;
    }

    public int getBookingNum() {
        return bookingNum;
    }

    public void setBookingNum(int bookingNum) {
        this.bookingNum = bookingNum;
    }

    public String getBookingMemberId() {
        return bookingMemberId;
    }

    public void setBookingMemberId(String bookingMemberId) {
        this.bookingMemberId = bookingMemberId;
    }

    public String getBookingRoomNum() {
        return bookingRoomNum;
    }

    public void setBookingRoomNum(String bookingRoomNum) {
        this.bookingRoomNum = bookingRoomNum;
    }

    public String getBookingName() {
        return bookingName;
    }

    public void setBookingName(String bookingName) {
        this.bookingName = bookingName;
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

    public int getBookingTourNum() {
        return bookingTourNum;
    }

    public void setBookingTourNum(int bookingTourNum) {
        this.bookingTourNum = bookingTourNum;
    }

    @Override
    public String toString() {
        return "Booking{" +
                "bookingNum=" + bookingNum +
                ", bookingMemberId='" + bookingMemberId + '\'' +
                ", bookingRoomNum='" + bookingRoomNum + '\'' +
                ", bookingName='" + bookingName + '\'' +
                ", checkInDate=" + checkInDate +
                ", checkOutDate=" + checkOutDate +
                ", bookingTourNum=" + bookingTourNum +
                '}';
    }
}
