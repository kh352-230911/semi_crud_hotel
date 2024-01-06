package com.sh.crud.member.controller;

import com.sh.crud.common.CRUD_Utils;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.member.model.entity.Pride;
import com.sh.crud.member.model.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;

@WebServlet("/member/memberRegister")
public class MemberRegisterServlet extends HttpServlet {

    private MemberService memberService = new MemberService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/WEB-INF/views/member/memberRegister.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        String id = req.getParameter("id");
        String password = CRUD_Utils.getEncryptedPassword(req.getParameter("password"), id);
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        String bookingCount = req.getParameter("bookingCount");
        int intValue = 0;
        if (bookingCount != null) {
            intValue = Integer.parseInt(bookingCount);
            // 나머지 로직 처리
        } else {
            // 값이 없는 경우에 대한 처리
        }
        LocalDateTime loginDate = LocalDateTime.now();

        System.out.println(id + ", " + password + ", " + name + ", " + email + ", " + phone + ", " + address + "," + loginDate  + "," + bookingCount);


        Member member = new Member(id, password, name, phone, email, address, loginDate, Pride.bronze, intValue);
        System.out.println(member);


        // 3. 업무로직
        int result = memberService.registerMember(member);

        req.getSession().setAttribute("msg", "😊회원가입 축하드립니다😊");

        // 4. view(forward) | redirect
        resp.sendRedirect(req.getContextPath() + "/");
    }
}