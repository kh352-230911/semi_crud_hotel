package com.sh.crud.member.controller;

import com.sh.crud.common.CRUD_Utils;
import com.sh.crud.manager.model.entity.Manager;
import com.sh.crud.manager.model.service.ManagerService;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.member.model.entity.Pride;
import com.sh.crud.member.model.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/member/memberLogin")
public class MemberLoginServlet extends HttpServlet {

    private MemberService memberService = new MemberService();
    private ManagerService managerService=new ManagerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String referer = req.getHeader("Referer");

        if (!referer.contains("/member/memberLogin"))
            req.getSession().setAttribute("next", referer);

        req.getRequestDispatcher("/WEB-INF/views/member/memberLogin.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        String id = req.getParameter("id");
        String password = CRUD_Utils.getEncryptedPassword(req.getParameter("password"), id);
        System.out.println(id + ", " + password);
        Manager manager = managerService.findById(id);
        Member member = memberService.findById(id);
        System.out.println(member);
        System.out.println(manager);

        HttpSession session = req.getSession();
        if(member != null && password.equals(member.getMemberPassword())) {
            // 로그인 성공
            session.setAttribute("loginMember", member);

            String location = req.getContextPath() + "/"; // 기본경로
            String next = (String) req.getSession().getAttribute("next");
            if (next != null) {
                location = next; // 기본경로에서 -> next(referer)주소로 전환
                req.getSession().removeAttribute("next"); // 바로 지워주기
            }
            resp.sendRedirect(location);
        }
        else if (manager != null && password.equals(manager.getManagerPwd())) {
            session.setAttribute("loginManager", manager);

            String location = req.getContextPath() + "/"; // 기본경로
            String next = (String) req.getSession().getAttribute("next");
            if (next != null) {
                location = next; // 기본경로에서 -> next(referer)주소로 전환
                req.getSession().removeAttribute("next"); // 바로 지워주기
            }
            resp.sendRedirect(location);

        }
        else {
            // 로그인 실패
            session.setAttribute("msg", "아이디가 존재하지 않거나, 비밀번호가 틀립니다. 😎");
            resp.sendRedirect(req.getContextPath() + "/member/memberLogin");
        }

    }
}