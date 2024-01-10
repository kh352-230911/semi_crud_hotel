package com.sh.crud.booking.controller;

import com.sh.crud.booking.model.service.BookingService;
import com.sh.crud.booking.model.vo.BookingVo;
import com.sh.crud.member.model.entity.Member;

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

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 세션에서 로그인 정보를 가져옵니다.
        Member loginMember = (Member) req.getSession().getAttribute("loginMember");

        // 로그인 정보가 null이라면 로그인하지 않은 상태입니다.
        if (loginMember == null) {
            // 로그인 페이지로 리다이렉트합니다.
            req.getSession().setAttribute("msg", "로그인을 먼저 해주세요😅");
            resp.sendRedirect(req.getContextPath() + "/member/memberLogin");
        } else {
            // 로그인 상태라면 예약 선택 페이지로 포워드합니다.
            req.getRequestDispatcher("/WEB-INF/views/booking/bookingChoice.jsp").forward(req, resp);
        }

    }
}