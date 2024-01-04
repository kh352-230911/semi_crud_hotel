package com.sh.crud.manager.controller;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.service.BookingService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/manager/managerBookingUpdate")
public class ManagerBookingUpdateServlet extends HttpServlet {
    BookingService bookingService=new BookingService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bookingNum2="1";
        String bookingNum = req.getParameter("bookingNum");
        Booking booking = bookingService.findByBookingNum(bookingNum);
        Booking booking2 = bookingService.findByBookingNum(bookingNum2);
        System.out.println(booking);
        System.out.println(booking2);
        req.setAttribute("booking", booking); // 예약 정보를 요청 속성에 추가


        req.getRequestDispatcher("/WEB-INF/views/manager/bookingUpdate.jsp").forward(req, resp);
    }
}