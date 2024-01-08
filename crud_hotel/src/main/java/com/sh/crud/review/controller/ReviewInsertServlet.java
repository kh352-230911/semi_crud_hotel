package com.sh.crud.review.controller;

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
        // 파일첨부
//        File repository = new File("C:\\Workspaces\\crud_hotel_workspace\\crud_hotel\\src\\main\\webapp\\upload\\review");
        File repository = new File("C:\\Workspaces\\crud_hotel_workspace\\crud_hotel\\target\\crud_hotel\\upload\\review");
        int sizeThreshold = 10 * 1024 * 1024; // 10mb
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setRepository(repository);
        factory.setSizeThreshold(sizeThreshold);

        ReviewVo review = new ReviewVo();

        ServletFileUpload servletFileUpload = new ServletFileUpload(factory);
        try{
            List<FileItem> fileItemList = servletFileUpload.parseRequest(req);
            // upload file 없으면 일반 텍스트 필드, 있을 경우 파일 저장
            for (FileItem item : fileItemList) {
                String name = item.getFieldName();
                if(item.isFormField()) {
                    String value = item.getString("utf-8");
                    System.out.println(name + " = " + value);
                    review.setValue(name, value);
                }
                else {
                    if(item.getSize() > 0) {
                        System.out.println(name);
                        String originalFilename = item.getName();
                        System.out.println("파일명 : " + originalFilename);
                        System.out.println("크기 : " + item.getSize() + " byte");

                        int dotIndex = originalFilename.lastIndexOf(".");
                        String ext = dotIndex > -1 ? originalFilename.substring(dotIndex) : "";
                        UUID uuid = UUID.randomUUID();
                        String renamedFilename = uuid + ext;
                        System.out.println("새 파일명 : " + renamedFilename);

                        File upFile = new File(repository, renamedFilename);
                        item.write(upFile);

                        ReviewPicture reviewPicture = new ReviewPicture();
                        reviewPicture.setOriginalFilename(originalFilename);
                        reviewPicture.setRenamedFilename(renamedFilename);
                        review.addReviewPicture(reviewPicture);
                    }
                }
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }


        int result = reviewService.insertReview(review);

        System.out.println(review);

//        req.setCharacterEncoding("utf-8");
//        String revId = req.getParameter("revId");
//        int revScore = Integer.parseInt(req.getParameter("revScore"));
//        String revRoomNum = req.getParameter("revRoomNum");
//        String revTitle = req.getParameter("revTitle");
//        String revContent = req.getParameter("revContent");
//
//        Review review = new Review();
//        review.setRevId(revId);
//        review.setRevScore(revScore);
//        review.setRevRoomNum(revRoomNum);
//        review.setRevTitle(revTitle);
//        review.setRevContent(revContent);
//        int result = reviewService.insertReview(review);
        req.getSession().setAttribute("msg", "게시글을 정상등록 했습니다.");
        resp.sendRedirect(req.getContextPath() + "/review/reviewList");
    }
}