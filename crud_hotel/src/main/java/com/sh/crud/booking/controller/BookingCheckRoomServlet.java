package com.sh.crud.booking.controller;

import com.google.gson.Gson;
import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.service.BookingService;
import com.sh.crud.booking.model.vo.BookingVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/booking/bookingRoom/check")
public class BookingCheckRoomServlet extends HttpServlet {

    private BookingService bookingService = new BookingService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 1. 인코딩처리
        req.setCharacterEncoding("utf-8");

        // 2. 사용자 입력값 가져오기
        String roomType = req.getParameter("roomType");
        String checkInDate = req.getParameter("checkInDate");
        String checkOutDate = req.getParameter("checkOutDate");
        String roomPeople = req.getParameter("roomPeople");
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

        List<BookingVo> booking = bookingService.findBookingAll(param);
        System.out.println(booking);

        resp.setContentType("application/json; charset=utf-8");

        // 예약한 방이 있는경우만 resp.getWriter()
        new Gson().toJson(booking, resp.getWriter());
        
    }
}