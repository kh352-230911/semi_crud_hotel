package com.sh.crud.review.controller;

import com.sh.crud.review.model.entity.RevPicture;
import com.sh.crud.review.model.entity.Review;
import com.sh.crud.review.model.service.ReviewService;
import com.sh.crud.review.model.vo.ReviewVo;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@WebServlet("/review/reviewInsert")
public class ReviewInsertServlet extends HttpServlet {
    private ReviewService reviewService = new ReviewService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/review/reviewInsert.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        // 파일첨부
//        File repository = new File("C:\\Workspaces\\crud_hotel_workspaces\\crud_hotel\\src\\main\\webapp\\upload\\review");
//        int sizeThreshold = 10 * 1024 * 1024; // 10mb
//        DiskFileItemFactory factory = new DiskFileItemFactory();
//        factory.setRepository(repository);
//        factory.setSizeThreshold(sizeThreshold);

        req.setCharacterEncoding("utf-8");
        String revId = req.getParameter("revId");
        int revScore = Integer.parseInt(req.getParameter("revScore"));
        String revRoomNum = req.getParameter("revRoomNum");
        String revTitle = req.getParameter("revTitle");
        String revContent = req.getParameter("revContent");

        Review review = new Review();
        review.setRevId(revId);
        review.setRevScore(revScore);
        review.setRevRoomNum(revRoomNum);
        review.setRevTitle(revTitle);
        review.setRevContent(revContent);
        int result = reviewService.insertReview(review);
        req.getSession().setAttribute("msg", "게시글을 정상등록 했습니다.");
        resp.sendRedirect(req.getContextPath() + "/review/reviewList");
    }
}