package com.sh.crud.booking.model.service;

import com.sh.crud.ask.model.vo.AskVo;
import com.sh.crud.booking.model.dao.BookingDao;
import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.vo.BookingVo;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

import static com.sh.crud.common.SqlSessionTemplate.getSqlSession;

public class BookingService {

    private BookingDao bookingDao = new BookingDao();


    public List<Booking> findByBookings(String id) {
        SqlSession session = getSqlSession();
        List<Booking> bookings = bookingDao.findByBookings(session, id);
        session.close();
        return bookings;
    }

    public Booking checkRoomAvailability(String roomNumber) {
        SqlSession session = getSqlSession();
        Booking booking = bookingDao.checkRoomAvailability(session, roomNumber);
        session.close();
        return booking;
    }


    public int deleteBooking(int num) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = bookingDao.deleteBooking(session, num);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public List<Booking> findAll(Map<String, Object> param) {
        SqlSession session = getSqlSession();
        List<Booking> bookings = bookingDao.findAll(session, param);
        session.close();
        return bookings;
    }

    public int getTotalCount() {
        SqlSession session = getSqlSession();
        int totalCount = bookingDao.getTotalCount(session);
        session.close();
        return totalCount;
    }

    public Booking findByBookingNum(String bookingNum) {
        SqlSession session = getSqlSession();
        Booking booking = bookingDao.findByBookingNum(session, bookingNum);
        session.close();
        return booking;
    }


    public int checkBookingOverlap(Map<String, Object> bookingParams) {
        SqlSession session = getSqlSession();

        try {

            int count = bookingDao.checkBookingOverlap(session, bookingParams);
            System.out.println(count);
            return count ;

        } catch (Exception e) {
            // 오류 처리
            session.rollback();
            throw e;
        }finally {
            session.close();
        }

    }

    public int updateBooking(Booking booking) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = BookingDao.updateBooking(session, booking);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public List<BookingVo> findBookingAll(Map<String, Object> param) {
        SqlSession session = getSqlSession();
        List<BookingVo> booking = bookingDao.findBookingAll(session, param);
        System.out.println(booking);
        session.close();
        return booking;
    }

    public int insertBooking(Booking booking) {
        int result=0;
        SqlSession session=getSqlSession();
        try {
            result = BookingDao.insertBooking(session, booking);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }
}





