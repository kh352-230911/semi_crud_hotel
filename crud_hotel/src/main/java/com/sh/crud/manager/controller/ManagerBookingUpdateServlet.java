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
        if (req.getSession().getAttribute("error") != null) {
            req.setAttribute("error", req.getSession().getAttribute("error"));
            req.getSession().removeAttribute("error"); // 서버 측에서 세션에서 오류 메시지 제거
        }
        int result = 0;
        Map<String, Object> bookingParams = new HashMap<>();
        String bookingNum = req.getParameter("num");
        String roomNum = req.getParameter("roomNum");
        LocalDate checkInDate = LocalDate.parse(req.getParameter("checkin"));
        LocalDateTime checkInDateTime = checkInDate.atStartOfDay();
        LocalDate checkOutDate = LocalDate.parse(req.getParameter("checkout"));
        LocalDateTime checkOutDateTime = checkOutDate.atStartOfDay();




        bookingParams.put("bookingRoomNum", roomNum);
        bookingParams.put("bookingNum", bookingNum);
        bookingParams.put("checkInDate", checkInDate);
        bookingParams.put("checkOutDate", checkOutDate);
        System.out.println(bookingNum);
        System.out.println(roomNum);
        System.out.println(checkInDate);
        System.out.println(checkOutDate);
        if (checkInDate.isAfter(checkOutDate)) {
            req.getSession().setAttribute("error", "체크인 날짜는 체크아웃 날짜보다 클 수 없습니다.");

            resp.sendRedirect(req.getContextPath() + "/manager/bookingCheck");
            return;
        }
        // 방번호 유효성 검증
        if (!roomService.isRoomNumberValid(roomNum)) {
//            System.out.println(roomService.isRoomNumberValid(roomNum));
            req.getSession().setAttribute("error", "유효하지 않은 방 번호입니다.");
            resp.sendRedirect(req.getContextPath() + "/manager/bookingCheck");
            return;
        }

        // 체크인/체크아웃 날짜 중복 검사
        if (bookingService.checkBookingOverlap(bookingParams) != 0) {

            req.getSession().setAttribute("error", "선택한 날짜에는 이미 다른 예약이 있습니다.");
            resp.sendRedirect(req.getContextPath() + "/manager/bookingCheck");
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
