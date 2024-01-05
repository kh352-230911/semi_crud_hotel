package com.sh.crud.manager.controller;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.service.BookingService;
import com.sh.crud.room.model.service.RoomService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/manager/BookingUpdate")
public class ManagerBookingUpdateServlet extends HttpServlet {
    private BookingService bookingService = new BookingService();
    private RoomService roomService= new RoomService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int result = 0;
        Map<String, Object> bookingParams = new HashMap<>();
        String bookingNum = req.getParameter("num");
        String roomNum = req.getParameter("roomNum");

        LocalDate checkInDate = LocalDate.parse(req.getParameter("checkin"));
        LocalDateTime checkInDateTime = checkInDate.atStartOfDay();

        LocalDate checkOutDate = LocalDate.parse(req.getParameter("checkout"));
        LocalDateTime checkOutDateTime = checkOutDate.atStartOfDay();

        if (checkInDate.isAfter(checkOutDate)) {
            req.setAttribute("msg", "체크인 날짜는 체크아웃 날짜보다 클 수 없습니다.");
            return; // 오류 발생 시 메서드 종료
        }
        // 방번호 유효성 검증
        if (!roomService.isRoomNumberValid(roomNum)) {
            req.setAttribute("error", "유효하지 않은 방 번호입니다.");
            return;
        }


        // 체크인/체크아웃 날짜 중복 검사
        if (bookingService.checkBookingOverlap(bookingParams)) {
            req.setAttribute("error", "선택한 날짜에는 이미 다른 예약이 있습니다.");
            return;
        }

        Booking booking = bookingService.findByBookingNum(bookingNum);

        // 예약 정보 업데이트 처리
        booking.setBookingRoomNum(roomNum);
        booking.setCheckInDate(checkInDateTime);
        booking.setCheckOutDate(checkOutDateTime);

        result = bookingService.updateBooking(booking);


        resp.sendRedirect(req.getContextPath() + "/manager/bookingCheck");
    }
}
