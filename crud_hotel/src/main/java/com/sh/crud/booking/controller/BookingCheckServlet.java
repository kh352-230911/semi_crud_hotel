package com.sh.crud.booking.controller;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.member.model.entity.Pride;
import com.sh.crud.member.model.service.MemberService;
import com.sh.crud.pride.model.entity.TbPride;
import com.sh.crud.pride.model.service.TbPrideService;
import com.sh.crud.room.model.entity.Room;
import com.sh.crud.room.model.service.RoomService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/booking/bookingCheck")
public class BookingCheckServlet extends HttpServlet {
    private RoomService roomService= new RoomService();
    private MemberService memberService= new MemberService();

    private TbPrideService prideService= new TbPrideService();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String roomNum = req.getParameter("roomId");
        HttpSession session = req.getSession();
        Member loginMember = (Member) session.getAttribute("loginMember");
        String id = loginMember.getMemberId();
        Pride pride= loginMember.getMemberPride();
        System.out.println(pride);
        TbPride tbPride=prideService.findByPride(pride);
        req.setAttribute("tbPride",tbPride);

        LocalDate checkInDate= (LocalDate) session.getAttribute("checkInDate");
        LocalDate checkOutDate= (LocalDate) session.getAttribute("checkOutDate");
        req.setAttribute("checkInDate",checkInDate);
        req.setAttribute("checkOutDate",checkOutDate);

        System.out.println(checkInDate);
        System.out.println(checkOutDate);
        Room room = roomService.findByRoomNum(roomNum);
        req.setAttribute("room",room);
        session.setAttribute("room", room);

//        req.setAttribute("booking",booking);
        req.getRequestDispatcher("/WEB-INF/views/booking/bookingCheck.jsp").forward(req, resp);
    }


}