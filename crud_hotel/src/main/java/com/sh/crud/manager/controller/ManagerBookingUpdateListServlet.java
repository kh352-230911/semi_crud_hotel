package com.sh.crud.manager.controller;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.service.BookingService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/manager/managerBookingCheck")
public class ManagerBookingUpdateListServlet extends HttpServlet {
    BookingService bookingService=new BookingService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String bookingNum = req.getParameter("bookingNum");
        Booking booking = bookingService.findByBookingNum(bookingNum);

//        System.out.println(booking);

        req.setAttribute("booking", booking); // 예약 정보를 요청 속성에 추가


        req.getRequestDispatcher("/WEB-INF/views/manager/bookingUpdate.jsp").forward(req, resp);
    }
}