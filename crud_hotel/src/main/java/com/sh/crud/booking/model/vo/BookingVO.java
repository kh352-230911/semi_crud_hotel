package com.sh.crud.booking.model.vo;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.pride.model.entity.Pride;
import com.sh.crud.room.model.entity.Room;

import java.time.LocalDateTime;

public class BookingVO extends Booking {

    private Member member;
    private Room room;
    private Pride pride;

    public BookingVO() {
    }


    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Pride getPride() {
        return pride;
    }

    public void setPride(Pride pride) {
        this.pride = pride;
    }

    @Override
    public String toString() {
        return "BookingVO{" +
                "bookingNum=" + getBookingNum() +
                ", bookingMemberId='" + getBookingMemberId() + '\'' +
                ", bookingRoomNum='" + getBookingRoomNum() + '\'' +
                ", bookingName='" + getBookingName() + '\'' +
                ", checkInDate=" + getCheckInDate() +
                ", checkOutDate=" + getCheckOutDate() +
                ", bookingTourNum=" + getBookingTourNum() +
                ", member=" + member +
                ", room=" + room +
                ", pride=" + pride +
                '}';
    }
}