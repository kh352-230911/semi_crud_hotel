package com.sh.crud.booking.model.vo;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.pride.model.entity.TbPride;
import com.sh.crud.room.model.entity.Room;

public class BookingVo extends Booking {

    private Member member;
    private Room room;
    private TbPride pride;

    public BookingVo() {
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public TbPride getPride() {
        return pride;
    }

    public void setPride(TbPride pride) {
        this.pride = pride;
    }

    @Override
    public String toString() {
        return "BookingVo{" +
                "member=" + member +
                ", room=" + room +
                ", pride=" + pride +
                '}';
    }
}
