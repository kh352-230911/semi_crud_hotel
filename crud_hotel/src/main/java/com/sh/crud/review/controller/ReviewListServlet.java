package com.sh.crud.review.controller;

import com.sh.crud.common.MvcUtils;
import com.sh.crud.review.model.service.ReviewService;
import com.sh.crud.review.model.vo.ReviewVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/review/reviewList")
public class ReviewListServlet extends HttpServlet {
    private ReviewService reviewService = new ReviewService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 입력값
        int page = 1;
        int limit = 10;
        try {
            page = Integer.parseInt(req.getParameter("page"));
        } catch (NumberFormatException ignore) {}
        Map<String, Object> param = Map.of("page", page, "limit", limit);
//        System.out.println(param);

        // 로직
        // content
        List<ReviewVo> reviews = reviewService.findAll(param);
        req.setAttribute("reviews", reviews);
//        System.out.println(reviews);

        // pagebar
        int totalCount = reviewService.getTotalCount();
        String url = req.getRequestURI();
        String pagebar = MvcUtils.getPagebar(page, limit, totalCount, url);
        req.setAttribute("pagebar", pagebar);

        // view
        req.getRequestDispatcher("/WEB-INF/views/review/reviewList.jsp").forward(req, resp);
    }
}