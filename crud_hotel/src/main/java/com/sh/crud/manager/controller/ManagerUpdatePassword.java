package com.sh.crud.manager.controller;

import com.sh.crud.common.CRUD_Utils;
import com.sh.crud.manager.model.entity.Manager;
import com.sh.crud.manager.model.service.ManagerService;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.member.model.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/manager/updatePassword")
public class ManagerUpdatePassword extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ManagerService managerService=new ManagerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manager/updatePassword.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Manager loginManager = (Manager) session.getAttribute("loginManager");
        String id = loginManager.getManagerId();

        String location = req.getContextPath();
        String msg = null;

        //1. 사용자 입력값 처리 : 기존비밀번호/신규비밀번호 암호화처리 필수
        String oldPassword = CRUD_Utils.getEncryptedPassword(req.getParameter("oldPassword"), id);
        String newPassword = CRUD_Utils.getEncryptedPassword(req.getParameter("newPassword"), id);

        //2. 기존비밀번호 비교 : session의 loginMember객체 이용할 것
        if(oldPassword.equals(loginManager.getManagerPwd())) {

            //3. 업무로직 : 기존비밀번호가 일치한 경우만 신규비밀번호로 업데이트한다.
            loginManager.setManagerPwd(newPassword); // 세션 갱신
            int result = managerService.updateManagerPassword(loginManager);
            msg = "비밀번호를 성공적으로 변경했습니다.";
            location += "/manager/managerDetail";
        }
        else {
            msg = "비밀번호가 일치하지 않습니다.";
            location += "/manager/updatePassword";
        }

        //4. 사용자경고창 및 리다이렉트 처리
        //기존비밀번호가 일치하지 않았다면, "비밀번호가 일치하지 않습니다." 안내 & /mvc/member/updatePassword 리다이렉트
        //기존비밀번호가 일치하고, 신규비밀번호 변경에 성공했다면, "비밀번호를 성공적으로 변경했습니다." 안내 & /mvc/member/memberView 리다이렉트
        session.setAttribute("msg", msg);
        resp.sendRedirect(location);
    }
}