package com.sh.crud.manager.controller;


import com.sh.crud.ask.model.entity.AskAnswer;
import com.sh.crud.ask.model.serivce.AskAnswerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/manager/processAnswer")
public class ManagerProcessAnswer extends HttpServlet {

    private AskAnswerService askAnswerService=new AskAnswerService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int askNum= Integer.parseInt(req.getParameter("askNum"));
        String answer = req.getParameter("answer");
        String managerid=req.getParameter("managerId");

        AskAnswer askAnswer= new AskAnswer(0,managerid,null,answer,null,askNum);
        int result= askAnswerService.saveAnswer(askAnswer);





    }
}
