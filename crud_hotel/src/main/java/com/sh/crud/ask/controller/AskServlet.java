package com.sh.crud.ask.controller;


import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.ask.model.entity.AskCase;
import com.sh.crud.ask.model.serivce.AskService;
import com.sh.crud.member.model.entity.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ask/ask")
public class AskServlet extends HttpServlet {
    private AskService askService = new AskService();

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
            // 로그인 상태라면 문의 페이지로 포워드합니다.
            req.getRequestDispatcher("/WEB-INF/views/ask/ask.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String askId = req.getParameter("askId");
        String askTitle = req.getParameter("askTitle");
        String askCase = req.getParameter("askCase");
        String askContent = req.getParameter("askContent");

        Ask ask = new Ask();
        ask.setAskId(askId);
        ask.setAskTitle(askTitle);
        ask.setAskCase(AskCase.valueOf(askCase));
        ask.setAskContent(askContent);
        System.out.println(ask);
        int result = askService.insertAsk(ask);

        req.getSession().setAttribute("msg", "문의가 정상적으로 접수되었습니다.☺ \n 감사합니다.");
        resp.sendRedirect(req.getContextPath() + "/");

    }
}