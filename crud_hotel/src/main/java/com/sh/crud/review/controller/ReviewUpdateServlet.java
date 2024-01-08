package com.sh.crud.review.controller;

import com.sh.crud.review.model.entity.Review;
import com.sh.crud.review.model.entity.ReviewPicture;
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
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

@WebServlet("/review/reviewUpdate")
public class ReviewUpdateServlet extends HttpServlet {
    ReviewService reviewService = new ReviewService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long revNum = Long.parseLong(req.getParameter("revNum"));
        ReviewVo review = reviewService.findByNum(revNum);
        System.out.println("리뷰업데이트서블릿에서 탐색된 review객체 : " + review);
        req.setAttribute("review", review);
        req.getRequestDispatcher("/WEB-INF/views/review/reviewUpdate.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        File repository = new File("C:\\Workspaces\\crud_hotel_workspace\\crud_hotel\\target\\crud_hotel\\upload\\review");
        int sizeThreshold = 10 * 1024 * 1024; // 10mb
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setRepository(repository);
        factory.setSizeThreshold(sizeThreshold);
        ServletFileUpload servletFileUpload = new ServletFileUpload(factory);
        ReviewVo review = new ReviewVo();

        try{
            List<FileItem> fileItemList = servletFileUpload.parseRequest(req);
            // upload file 없으면 일반 텍스트 필드, 있을 경우 파일 저장
            for (FileItem fileItem : fileItemList) {
                String name = fileItem.getFieldName();
                if(fileItem.isFormField()) {
                    String value = fileItem.getString("utf-8");
                    System.out.println(name + " = " + value);
                    review.setValue(name, value);
                }
                else {
                    if(fileItem.getSize() > 0) {
                        String originalFilename = fileItem.getName();
                        System.out.println("파일명 : " + originalFilename);
                        System.out.println("크기 : " + fileItem.getSize() + " byte");

                        int dotIndex = originalFilename.lastIndexOf(".");
                        String ext = dotIndex > -1 ? originalFilename.substring(dotIndex) : "";
                        String renamedFilename = UUID.randomUUID() + ext;
                        ReviewPicture reviewPicture = new ReviewPicture();
                        reviewPicture.setOriginalFilename(originalFilename);
                        reviewPicture.setRenamedFilename(renamedFilename);
                        review.addReviewPicture(reviewPicture);

                        System.out.println("새 파일명 : " + renamedFilename);
                        File upFile = new File(repository, renamedFilename);
                        fileItem.write(upFile);

                    }
                }
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        System.out.println(review);
        int result = reviewService.updateReview(review);




//        req.setCharacterEncoding("utf-8");
//        long revNum = Long.parseLong(req.getParameter("revNum"));
//        String revId = req.getParameter("revId");
//        int revScore = Integer.parseInt(req.getParameter("revScore"));
//        String revRoomNum = req.getParameter("revRoomNum");
//        String revTitle = req.getParameter("revTitle");
//        String revContent = req.getParameter("revContent");
//        LocalDateTime revDate = LocalDateTime.parse(req.getParameter("revDate"));
//
//        Review review = new Review();
//        review.setRevNum(revNum);
//        review.setRevId(revId);
//        review.setRevScore(revScore);
//        review.setRevRoomNum(revRoomNum);
//        review.setRevTitle(revTitle);
//        review.setRevContent(revContent);
//        review.setRevDate(revDate);
//        int result = reviewService.updateReview(review);
//        System.out.println(review);
        req.getSession().setAttribute("msg", "리뷰수정이 완료되었습니다.");
        resp.sendRedirect(req.getContextPath() + "/review/reviewDetail?revNum=" + review.getRevNum());
    }
}