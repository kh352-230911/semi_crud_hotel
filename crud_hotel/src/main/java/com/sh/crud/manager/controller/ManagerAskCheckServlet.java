package com.sh.crud.manager.controller;

import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.ask.model.serivce.AskService;
import com.sh.crud.ask.model.vo.AskVo;
import com.sh.crud.common.MvcUtils;
import com.sh.crud.member.model.entity.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/manager/askCheck")
public class ManagerAskCheckServlet extends HttpServlet {

    private AskService askService =new AskService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<AskVo> askVos = askService.findAllAsk();

        req.setAttribute("askVos",askVos);



        req.getRequestDispatcher("/WEB-INF/views/manager/managerAskCheck.jsp").forward(req,resp);
    }
}
