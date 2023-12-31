package com.sh.crud.review.model.service;

import com.sh.crud.review.model.dao.ReviewDao;
import com.sh.crud.review.model.entity.Review;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

import static com.sh.crud.common.SqlSessionTemplate.getSqlSession;

public class ReviewService {
    ReviewDao reviewDao = new ReviewDao();

    public List<Review> findAll() {
        SqlSession session = getSqlSession();
        List<Review> reviews = reviewDao.findAll(session);
        session.close();
        return reviews;
    }

    public Review findById(String id) {
        SqlSession session = getSqlSession();
        Review review = reviewDao.findById(session, id);
        session.close();
        return review;
    }

    public int insertReview(Review review) {
        SqlSession session = getSqlSession();
        int result = 0;
        try {
            result = reviewDao.insertReview(session, review);
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
