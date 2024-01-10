package com.sh.crud.member.controller;

import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.service.BookingService;
import com.sh.crud.member.model.entity.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/member/bookingDelete")
public class BookingDelete extends HttpServlet {

    private BookingService bookingService = new BookingService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/member/bookingDelete.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        int num = Integer.parseInt(req.getParameter("num"));

        int result = bookingService.deleteBooking(num);

        HttpSession session = req.getSession();


        session = req.getSession();
        session.setAttribute("msg", "성공적으로 예약취소를 완료했습니다. \n 이용해 주셔서 감사합니다☺");

        resp.sendRedirect(req.getContextPath() + "/");
    }
}