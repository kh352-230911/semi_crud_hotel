package com.sh.crud.review.controller;

import com.sh.crud.review.model.entity.ReviewComment;
import com.sh.crud.review.model.service.ReviewService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/review/reviewCommentCreate")
public class ReviewCommentCreate extends HttpServlet {
    private ReviewService reviewService = new ReviewService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        long comRevNum = Long.parseLong(req.getParameter("comNum"));
        String comId = req.getParameter("comId");
        String comContent = req.getParameter("comContent");
        ReviewComment reviewComment = new ReviewComment();
        reviewComment.setComRevNum(comRevNum);
        reviewComment.setComId(comId);
        reviewComment.setComContent(comContent);
        System.out.println("크리에이트서블릿 리뷰코멘트객체 : " + reviewComment);

        int result = reviewService.insertReviewComment(reviewComment);
        resp.sendRedirect(req.getContextPath() + "/review/reviewDetail?revNum=" + comRevNum);
    }
}