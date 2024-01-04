package com.sh.crud.booking.model.service;

import com.sh.crud.booking.model.dao.BookingDao;
import com.sh.crud.booking.model.entity.Booking;
import org.apache.ibatis.session.SqlSession;

import java.util.Map;

import static com.sh.crud.common.SqlSessionTemplate.getSqlSession;

public class BookingService {

    private BookingDao bookingDao = new BookingDao();

    public Booking findByBookingMemberId(String bookingMemberId) {
        SqlSession session = getSqlSession();
        Booking booking = bookingDao.findByBookingMemberId(session, bookingMemberId);
        session.close();
        return booking;
    }

    public Booking checkRoomAvailability(String roomNumber) {
        SqlSession session = getSqlSession();
        Booking booking = bookingDao.checkRoomAvailability(session ,roomNumber);
        session.close();
        return booking;
    }
}
