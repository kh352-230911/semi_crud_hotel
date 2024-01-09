package com.sh.crud.booking.model.vo;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.pride.model.entity.TbPride;
import com.sh.crud.room.model.entity.Room;

import java.util.ArrayList;
import java.util.List;

public class BookingVo extends Booking {
    private List<Room> rooms = new ArrayList<>();
    private Member member;
    private Room room;
    private TbPride pride;

    public BookingVo() {
    }

    @Override
    public String toString() {
        return "BookingVo{" +
                "rooms=" + rooms +
                ", member=" + member +
                ", room=" + room +
                ", pride=" + pride +
                '}';
    }

    public List<Room> getRooms() {
        return rooms;
    }

    public void setRooms(List<Room> rooms) {
        this.rooms = rooms;
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

    public TbPride getPride() {
        return pride;

    }

    public void setPride(TbPride pride) {
        this.pride = pride;

    }


}
