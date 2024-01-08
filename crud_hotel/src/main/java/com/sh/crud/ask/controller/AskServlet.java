package com.sh.crud.ask.controller;


import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.ask.model.entity.AskCase;
import com.sh.crud.ask.model.serivce.AskService;

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
        req.getRequestDispatcher("/WEB-INF/views/ask/ask.jsp").forward(req, resp);
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