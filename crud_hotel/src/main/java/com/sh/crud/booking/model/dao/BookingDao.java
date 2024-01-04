package com.sh.crud.booking.model.dao;

import com.sh.crud.booking.model.entity.Booking;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class BookingDao {
    public Booking findByBookingMemberId(SqlSession session, String bookingMemberId) {
        return session.selectOne("booking.findByBookingMemberId", bookingMemberId);
    }
    public List<Booking> findByBookings(SqlSession session, String id) {
        return session.selectList("booking.findByBookingMemberId", id);
    }

    public Booking checkRoomAvailability(SqlSession session, String roomNumber) {
        return session.selectOne("booking.checkRoomAvailability", roomNumber);
    }

    public int deleteBooking(SqlSession session, String id) {
        return session.delete("booking.deleteBooking", id);
    }
}
