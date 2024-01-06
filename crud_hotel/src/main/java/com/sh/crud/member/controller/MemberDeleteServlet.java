package com.sh.crud.member.controller;

import com.sh.crud.member.model.entity.Member;
import com.sh.crud.member.model.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/member/memberDelete")
public class MemberDeleteServlet extends HttpServlet {

    private MemberService memberService = new MemberService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/member/memberDelete.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Member loginMember = (Member) req.getSession().getAttribute("loginMember");
        String id = loginMember.getMemberId();

        Member member = memberService.findById(id);

        int result = memberService.deleteMember(id);

        HttpSession session = req.getSession();

        session.invalidate();

        session = req.getSession();
        session.setAttribute("msg", "성공적으로 회원탈퇴했습니다. \n 이용해 주셔서 감사합니다☺");

        resp.sendRedirect(req.getContextPath() + "/");
    }
}