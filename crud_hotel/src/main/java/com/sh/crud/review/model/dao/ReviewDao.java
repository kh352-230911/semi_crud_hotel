package com.sh.crud.review.model.dao;

import com.sh.crud.review.model.entity.Review;
import com.sh.crud.review.model.vo.ReviewVo;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

public class ReviewDao {

    public List<Review> findAll(SqlSession session) {
        return session.selectList("review.findAll");
    }

    public Review findById(SqlSession session, String id) {
        return session.selectOne("review.findById", id);
    }

    public List<ReviewVo> findAll(SqlSession session, Map<String, Object> param) {
        int page = (int) param.get("page");
        int limit = (int) param.get("limit");
        int offset = (page - 1) * limit;
        return session.selectList("review.findAll", null, new RowBounds(offset, limit));
    }

    public int getTotalCount(SqlSession session) {
        return session.selectOne("review.getTotalCount");
    }

    public int insertReview(SqlSession session, ReviewVo review) {
        return session.insert("review.insertReview", review);
    }

    public Review findByNum(SqlSession session, int num) {
        return session.selectOne("review.findByNum", num);
    }
}
