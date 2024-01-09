package com.sh.crud.booking.controller;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.service.BookingService;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.room.model.entity.Room;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;

@WebServlet("/booking/bookingPay")
public class BookingPayServlet extends HttpServlet {
    private BookingService bookingService = new BookingService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        HttpSession session = req.getSession();
        Member loginMember = (Member) session.getAttribute("loginMember");
        Room room = (Room) session.getAttribute("room");

        String id =loginMember.getMemberId();
        String roomNum=room.getRoomNum();
        String name=loginMember.getMemberName();
        LocalDate checkInDate= (LocalDate) session.getAttribute("checkInDate");
        LocalDate checkOutDate= (LocalDate) session.getAttribute("checkOutDate");
        LocalDateTime checkInDateTime = checkInDate.atStartOfDay();
        LocalDateTime checkOutDateTime = checkOutDate.atStartOfDay();
        System.out.println(id);
        System.out.println(roomNum);
        System.out.println(name);
        System.out.println(checkInDate);
        System.out.println(checkOutDate);

        Booking booking=new Booking(0,id,roomNum,name,checkInDateTime,checkOutDateTime,1);
        session.setAttribute("booking",booking);
        int result=bookingService.insertBooking(booking);

        req.getRequestDispatcher("/WEB-INF/views/booking/bookingPay.jsp").forward(req,resp);
    }
}