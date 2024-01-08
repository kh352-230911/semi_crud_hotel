package com.sh.crud.manager.controller;

import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.ask.model.entity.AskAnswer;
import com.sh.crud.ask.model.serivce.AskAnswerService;
import com.sh.crud.ask.model.serivce.AskService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/manager/managerAskAnswer")
public class ManagerAskAnswerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/WEB-INF/views/manager/managerAskAnswer.jsp").forward(req, resp);

        req.setCharacterEncoding("utf-8");


    }
}
