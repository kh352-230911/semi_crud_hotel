package com.sh.crud.member.controller;

import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.ask.model.serivce.AskService;
import com.sh.crud.ask.model.vo.AskVo;
import com.sh.crud.booking.model.entity.Booking;
import com.sh.crud.booking.model.service.BookingService;
import com.sh.crud.member.model.entity.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/member/askCheck")
public class AskCheck extends HttpServlet {

    private AskService askService = new AskService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Member loginMember = (Member) req.getSession().getAttribute("loginMember");
        String id = loginMember.getMemberId();

        List<AskVo> askVos = askService.findByAsks(id);
        req.setAttribute("askVos", askVos);
        System.out.println(askVos);

        req.getRequestDispatcher("/WEB-INF/views/member/askCheck.jsp").forward(req, resp);

    }

}