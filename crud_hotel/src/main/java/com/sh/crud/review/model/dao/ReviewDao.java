package com.sh.crud.review.model.dao;

import com.sh.crud.review.model.entity.Review;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ReviewDao {

    public List<Review> findAll(SqlSession session) {
        return session.selectList("review.findAll");
    }

    public Review findById(SqlSession session, String id) {
        return session.selectOne("review.findById", id);
    }


    public int insertReview(SqlSession session, Review review) {
        return session.insert("review.insertReview", review);
    }
}
