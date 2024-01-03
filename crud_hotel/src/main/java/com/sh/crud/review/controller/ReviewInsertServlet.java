package com.sh.crud.review.controller;

import com.sh.crud.review.model.service.ReviewService;
import com.sh.crud.review.model.vo.ReviewVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/review/reviewInsert")
public class ReviewInsertServlet extends HttpServlet {
    private ReviewService reviewService = new ReviewService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/review/reviewInsert.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ReviewVo review = new ReviewVo();
        int result = reviewService.insertReview(review);
        req.getSession().setAttribute("msg", "게시글을 정상등록 했습니다.");
        resp.sendRedirect(req.getContextPath() + "/review/reviewList");
    }
}