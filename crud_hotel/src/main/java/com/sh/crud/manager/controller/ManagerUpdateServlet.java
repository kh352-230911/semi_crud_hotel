package com.sh.crud.manager.controller;

import com.sh.crud.manager.model.entity.Manager;
import com.sh.crud.manager.model.service.ManagerService;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.member.model.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;

@WebServlet("/manager/mangerUpdate")
public class ManagerUpdateServlet extends HttpServlet {
    private ManagerService managerService = new ManagerService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 1. 인코딩설정
        req.setCharacterEncoding("utf-8");
        // 2. 사용자입력값 가져오기

        Manager loginManager = (Manager) req.getSession().getAttribute("loginManager");
        String id = loginManager.getManagerId();
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");

        Manager manager = new Manager(null,id, null, name,   phone,  email);
        System.out.println(manager);

        // 3. 업무로직
        int result = managerService.updateManager(manager);
        // db정보가 성공적으로 수정되었다면, 해당내용으로 session속성 loginMember업데이트
        Manager managerUpdated = managerService.findById(id);
        req.getSession().setAttribute("loginManager", managerUpdated);

        // 4. redirect : /mvc/member/memberDetail
        resp.sendRedirect(req.getContextPath() + "/manager/managerDetail");

    }

}