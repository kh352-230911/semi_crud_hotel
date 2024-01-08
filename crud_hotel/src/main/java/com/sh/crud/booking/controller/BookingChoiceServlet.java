package com.sh.crud.booking.controller;

import com.sh.crud.booking.model.service.BookingService;
import com.sh.crud.booking.model.vo.BookingVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/booking/bookingChoice")
public class BookingChoiceServlet extends HttpServlet {

    private BookingService bookingService = new BookingService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/booking/bookingChoice.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 1. 인코딩처리
        req.setCharacterEncoding("utf-8");

        // 2. 사용자 입력값 가져오기
        String roomType = req.getParameter("roomType");
        String checkInDate = req.getParameter("checkInDate");
        String checkOutDate = req.getParameter("checkOutDate");
        String roomPeople = req.getParameter("roomPeople");

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

        // 리다이렉트후 경고창으로 성공메세지 전달
        req.getSession().setAttribute("msg", "정상적으로 객실이 조회되었습니다.");

        // 4. view(forward) | redirect
        resp.sendRedirect(req.getContextPath() + "/");
    }
}