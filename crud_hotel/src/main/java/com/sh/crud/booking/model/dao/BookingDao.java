package com.sh.crud.booking.model.dao;

import com.sh.crud.booking.model.entity.Booking;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

public class BookingDao {
    public List<Booking> findByBookingMemberId(SqlSession session, String bookingMemberId) {
        return session.selectList("booking.findByBookingMemberId", bookingMemberId);
    }
    public List<Booking> findByBookings(SqlSession session, String id) {
        return session.selectList("booking.findByBookingMemberId", id);
    }

    public Booking checkRoomAvailability(SqlSession session, String roomNumber) {
        return session.selectOne("booking.checkRoomAvailability", roomNumber);
    }


    public int deleteBooking(SqlSession session, int num) {
        return session.delete("booking.deleteBooking", num);
    }
    public List<Booking> findAll(SqlSession session, Map<String, Object> param) {
        int page = (int) param.get("page");
        int limit = (int) param.get("limit");
        int offset = (page - 1) * limit;
        return session.selectList("booking.findAll", null, new RowBounds(offset, limit));
    }

    public int getTotalCount(SqlSession session) {
        return session.selectOne("booking.getTotalCount");
    }

    public Booking findByBookingNum(SqlSession session, String bookingNum) {
        return session.selectOne("booking.findByBookingNum", bookingNum);

    }

}
