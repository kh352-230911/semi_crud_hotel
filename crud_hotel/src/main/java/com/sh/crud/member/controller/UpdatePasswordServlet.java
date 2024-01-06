package com.sh.crud.member.controller;

import com.sh.crud.common.CRUD_Utils;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.member.model.service.MemberService;
import org.apache.tomcat.util.http.HeaderUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/member/updatePassword")
public class UpdatePasswordServlet extends HttpServlet {

    private MemberService memberService = new MemberService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/WEB-INF/views/member/updatePassword.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        Member loginMember = (Member) session.getAttribute("loginMember");
        String id = loginMember.getMemberId();

        // 기존,신규 암호화처리
        String oldPwd = CRUD_Utils.getEncryptedPassword(req.getParameter("oldPwd"), id);
        String newPwd = CRUD_Utils.getEncryptedPassword(req.getParameter("newPwd"), id);

        // 기존비밀번호 비교
        if (oldPwd.equals(loginMember.getMemberPassword())) {
            loginMember.setMemberPassword(newPwd);
            int result = memberService.updateMemberPassword(loginMember);
            session.setAttribute("msg", "비밀번호가 수정 되었습니다😊");

            resp.sendRedirect(req.getContextPath() + "/member/memberDetail");
        }
        else {
            session.setAttribute("msg", "비밀번호가 일치하지 않습니다😂");

            resp.sendRedirect(req.getContextPath() + "/member/updatePassword");
        }
    }
}