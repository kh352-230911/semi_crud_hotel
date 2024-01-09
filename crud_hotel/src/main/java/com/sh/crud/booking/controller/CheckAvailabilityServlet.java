package com.sh.crud.booking.controller;

import com.google.gson.Gson;
import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.service.BookingService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/room/roomStandard/roomStandardCheck")
public class CheckAvailabilityServlet extends HttpServlet {

    private BookingService bookingService = new BookingService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 사용자 입력값 처리
        String bookingRoomNum = req.getParameter("bookingRoomNum");

        Booking booking = bookingService.checkRoomAvailability(bookingRoomNum);
        System.out.println(booking);

        resp.setContentType("application/json; charset=utf-8");

        // 예약한 방이 있는경우만 resp.getWriter()
        if(booking != null) {
            new Gson().toJson(booking.getBookingRoomNum(), resp.getWriter());
        }
    }
}