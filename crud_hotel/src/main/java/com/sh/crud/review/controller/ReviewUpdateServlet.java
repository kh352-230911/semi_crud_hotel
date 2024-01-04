package com.sh.crud.review.controller;

import com.sh.crud.review.model.entity.Review;
import com.sh.crud.review.model.service.ReviewService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/review/reviewUpdate")
public class ReviewUpdateServlet extends HttpServlet {
    ReviewService reviewService = new ReviewService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long num = Long.parseLong(req.getParameter("revNum"));
        System.out.println(num);
        Review review = reviewService.findByNum(num);
        req.setAttribute("review", review);
        req.getRequestDispatcher("/WEB-INF/views/review/reviewUpdate.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Review review = new Review();
        int result = reviewService.updateReview(review);
        req.getSession().setAttribute("msg", "리뷰수정이 완료되었습니다.");
        resp.sendRedirect(req.getContextPath() + "/review/reviewDetail?revNum=" + review.getRevNum());
    }
}