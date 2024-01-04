package com.sh.crud.review.model.service;

import com.sh.crud.review.model.dao.ReviewDao;
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

    public int insertReview(ReviewVo review) {
        int result = 0;
        SqlSession session = getSqlSession();
        try{
            result = reviewDao.insertReview(session, review);
            System.out.println("ReviewService#insertReview : review#id = " + review.getRevId());
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public Review findByNum(long num) {
        SqlSession session = getSqlSession();
        Review review = reviewDao.findByNum(session, num);
        session.close();
        return review;
    }

    public int deleteReview(long num) {
        int result = 0;
        SqlSession session = getSqlSession();
        try{
            result = reviewDao.deleteReview(session, num);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public int updateReview(Review review) {
        int result = 0;
        SqlSession session = getSqlSession();
        try{
            result = reviewDao.updateReview(session, review);
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
