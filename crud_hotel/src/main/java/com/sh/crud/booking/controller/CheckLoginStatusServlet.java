package com.sh.crud.booking.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/booking/CheckLoginStatusServlet")
public class CheckLoginStatusServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 세션에서 로그인 상태를 체크합니다.
        HttpSession session = req.getSession(); // false: 존재하지 않으면 null을 반환
        boolean isLogin = (session != null && session.getAttribute("loginMember") != null);

        // 응답 타입을 text로 설정합니다.
        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");

        // 로그인 상태에 따라 'true' 또는 'false'를 응답으로 보냅니다.
        resp.getWriter().write(Boolean.toString(isLogin));
    }
}