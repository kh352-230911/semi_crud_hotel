package com.sh.crud.booking.controller;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.service.BookingService;
import com.sh.crud.member.model.entity.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/booking/bookingComplete")
public class BookingCompleteServlet extends HttpServlet {

    private BookingService bookingService = new BookingService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Member loginMember = (Member) req.getSession().getAttribute("loginMember");
        String id = loginMember.getMemberId();
        System.out.println(loginMember);

        List<Booking> bookings = bookingService.findByBookings(id);
        req.setAttribute("bookings", bookings);
        System.out.println(bookings);
        req.getRequestDispatcher("/WEB-INF/views/booking/bookingComplete.jsp").forward(req, resp);
    }
}