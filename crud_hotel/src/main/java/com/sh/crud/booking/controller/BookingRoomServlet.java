package com.sh.crud.booking.controller;

import com.sh.crud.booking.model.service.BookingService;
import com.sh.crud.booking.model.vo.BookingVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/booking/bookingRoom")
public class BookingRoomServlet extends HttpServlet {

    private BookingService bookingService = new BookingService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 1. 인코딩처리
        req.setCharacterEncoding("utf-8");

        // 2. 사용자 입력값 가져오기
        String roomType = req.getParameter("roomType");
        LocalDate checkInDate = LocalDate.parse(req.getParameter("checkInDate"));
        LocalDate checkOutDate = LocalDate.parse(req.getParameter("checkOutDate"));
        int roomPeople = Integer.parseInt(req.getParameter("roomPeople"));
        System.out.println(roomType);
        System.out.println(checkInDate);
        System.out.println(checkOutDate);
        System.out.println(roomPeople);

        Map<String, Object> param = new HashMap<>();
        param.put("roomType", roomType);
        param.put("checkInDate", checkInDate);
        param.put("checkOutDate", checkOutDate);
        param.put("roomPeople", roomPeople);
        System.out.println(param);

        // 3. 업무로직
        List<BookingVo> booking = bookingService.findBookingAll(param);
        System.out.println(booking);
        req.setAttribute("booking", booking);


        req.getRequestDispatcher("/WEB-INF/views/booking/bookingRoom.jsp").forward(req, resp);
    }



}