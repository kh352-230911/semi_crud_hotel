package com.sh.crud.review.controller;

import com.sh.crud.common.MvcUtils;
import com.sh.crud.review.model.entity.Review;
import com.sh.crud.review.model.service.ReviewService;
import com.sh.crud.review.model.vo.ReviewVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/review/reviewDetail")
public class ReviewDetailServlet extends HttpServlet {

    private ReviewService reviewService = new ReviewService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long revNum = Long.parseLong(req.getParameter("revNum"));
        System.out.println("detail revNum 은 " + "revNum");
//        System.out.println(num);

        ReviewVo review = reviewService.findByNum(revNum);
        System.out.println("디테일서블릿 탐색된 review객체 : " + review);
//        System.out.println(review.getRevId());
        String safeHtml = MvcUtils.escapeHtml(review.getRevContent());
        review.setRevContent(MvcUtils.convertLineFeedToBr(safeHtml));
        req.setAttribute("review", review);

        req.getRequestDispatcher("/WEB-INF/views/review/reviewDetail.jsp").forward(req, resp);
    }
}