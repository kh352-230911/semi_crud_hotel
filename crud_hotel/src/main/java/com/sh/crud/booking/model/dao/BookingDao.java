package com.sh.crud.booking.model.dao;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.vo.BookingVo;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

public class BookingDao {


    public static int updateBooking(SqlSession session, Booking booking) {
        return session.update("booking.updateBooking",booking);
    }

    public static int insertBooking(SqlSession session, Booking booking) {
        return session.insert("booking.insertBooking",booking);
    }

    public Booking findByBookingMemberId(SqlSession session, String bookingMemberId) {
        return session.selectOne("booking.findByBookingMemberId", bookingMemberId);

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


    public int checkBookingOverlap(SqlSession session, Map<String, Object> bookingParams) {
        int result = session.selectOne("booking.checkBookingOverlap", bookingParams);
        // 결과값 로깅
        System.out.println(bookingParams);
        System.out.println("checkBookingOverlap result: " + result);
        return result;
    }

    public List<BookingVo> findBookingAll(SqlSession session, Map<String, Object> param) {
        System.out.println(session.selectList("booking.findBookingAll", param));
        return session.selectList("booking.findBookingAll", param);
    }
}
