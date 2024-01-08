package com.sh.crud.review.controller;

import com.sh.crud.review.model.service.ReviewService;
import com.sh.crud.review.model.vo.ReviewVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/review/reviewDelete")
public class ReviewDeleteServlet extends HttpServlet {
    private ReviewService reviewService = new ReviewService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long revNum = Long.parseLong(req.getParameter("revNum"));
        ReviewVo review = reviewService.findByNum(revNum);
        System.out.println("리뷰딜리트서블릿에서 탐색된 review객체 : " + review);
        int result = reviewService.deleteReview(review);
        req.getSession().setAttribute("msg", "리뷰를 삭제했습니다.");
        resp.sendRedirect(req.getContextPath() + "/review/reviewList");
    }
}