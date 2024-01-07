package com.sh.crud.member.controller;

import com.sh.crud.member.model.entity.Member;
import com.sh.crud.member.model.entity.Pride;
import com.sh.crud.member.model.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet("/member/memberUpdate")
public class MemberUpdateServlet extends HttpServlet {

    private MemberService memberService = new MemberService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        Member loginMember = (Member) req.getSession().getAttribute("loginMember");
        String id = loginMember.getMemberId();

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        int bookingCount = Integer.parseInt(req.getParameter("bookingCount"));

        Member member = new Member(id, null, name, phone, email, address, null, Pride.bronze, bookingCount);
        System.out.println(member);

        int result = memberService.updateMember(member);

        Member memberUpdate = memberService.findById(id);
        req.getSession().setAttribute("loginMember", memberUpdate);
        req.getSession().setAttribute("msg", "회원수정을 축하드립니다🙂");

        resp.sendRedirect(req.getContextPath() + "/member/memberDetail");
    }
}