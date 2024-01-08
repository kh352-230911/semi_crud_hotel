package com.sh.crud.booking.model.vo;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.room.model.entity.Room;

import java.time.LocalDateTime;

public class BookingVo extends Booking {

    private Room room;


    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    @Override
    public String toString() {
        return "BookingVo{" +
                "room=" + room +
                "} " + super.toString();
    }
}
