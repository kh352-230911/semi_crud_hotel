package com.sh.crud.review.model.service;

import com.sh.crud.review.model.dao.ReviewDao;
import com.sh.crud.review.model.entity.ReviewComment;
import com.sh.crud.review.model.entity.ReviewPicture;
import com.sh.crud.review.model.entity.Review;
import com.sh.crud.review.model.vo.ReviewVo;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

import static com.sh.crud.common.SqlSessionTemplate.getSqlSession;

public class ReviewService {
    ReviewDao reviewDao = new ReviewDao();

    public List<Review> findAll() {
        SqlSession session = getSqlSession();
        List<Review> reviews = reviewDao.findAll(session);
        session.close();
        return reviews;
    }

    public List<ReviewVo> findAll(Map<String, Object> param) {
        SqlSession session = getSqlSession();
        List<ReviewVo> reviews = reviewDao.findAll(session, param);
        session.close();
        return reviews;
    }

    public Review findById(String id) {
        SqlSession session = getSqlSession();
        Review review = reviewDao.findById(session, id);
        session.close();
        return review;
    }


    public int getTotalCount() {
        SqlSession session = getSqlSession();
        int totalCount = reviewDao.getTotalCount(session);
        session.close();
        return totalCount;
    }



    public int deleteReview(ReviewVo review) {
        int result = 0;
        SqlSession session = getSqlSession();
        try{
            result = reviewDao.deleteReview(session, review);
            List<Long> delFiles = review.getDelFiles();
            if (!delFiles.isEmpty()) {
                for (Long revNum : delFiles) {
                    result = reviewDao.deleteReviewPicture(session, revNum);
                }
            }
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public int updateReview(ReviewVo review) {
        int result = 0;
        SqlSession session = getSqlSession();
        try{
            result = reviewDao.updateReview(session, review);

            List<Long> delFiles = review.getDelFiles();
            if (!delFiles.isEmpty()) {
                for (Long revNum : delFiles) {
                    result = reviewDao.deleteReviewPicture(session, revNum);
                }
            }

            List<ReviewPicture> reviewPictures = review.getReviewPictures();
            if (!reviewPictures.isEmpty()) {
                for (ReviewPicture reviewPicture : reviewPictures) {
                    reviewPicture.setRevPicNum(review.getRevNum());
                    result = reviewDao.insertRevPicture(session, reviewPicture);
                }
            }
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }


    public int insertReview(ReviewVo review) {
        int result = 0;
        SqlSession session = getSqlSession();
        try{
            // tb_review
            result = reviewDao.insertReview(session, review);

            // tb_review_picture
            List<ReviewPicture> reviewPictures = review.getReviewPictures();
            if(!reviewPictures.isEmpty()) {
                for (ReviewPicture reviewPicture : reviewPictures) {
                    reviewPicture.setRevPicNum(review.getRevNum());
                    result = reviewDao.insertRevPicture(session, reviewPicture);
                    System.out.println(reviewPictures);
                }
            }
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public ReviewVo findByNum(long revNum) {
        SqlSession session = getSqlSession();
        ReviewVo review = null;
        review = reviewDao.findByNum(session, revNum);
        List<ReviewComment> comments = reviewDao.findCommentByRevNum(session, revNum);
        review.setComments(comments);
        session.close();
        return review;
    }

    public int insertReviewComment(ReviewComment reviewComment) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = reviewDao.insertReviewComment(session, reviewComment);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }
}
