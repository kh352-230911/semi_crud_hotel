package com.sh.crud.booking.model.dao;

import com.sh.crud.booking.model.entity.Booking;
import org.apache.ibatis.session.SqlSession;

public class BookingDao {
    public Booking findByBookingMemberId(SqlSession session, String bookingMemberId) {
        return session.selectOne("booking.findByBookingMemberId", bookingMemberId);
    }
}
