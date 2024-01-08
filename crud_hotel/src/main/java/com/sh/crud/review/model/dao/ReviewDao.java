package com.sh.crud.review.model.dao;

import com.sh.crud.review.model.entity.ReviewComment;
import com.sh.crud.review.model.entity.ReviewPicture;
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

    public ReviewVo findById(SqlSession session, String id) {
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



    public ReviewVo findByNum(SqlSession session, long revNum) {
        return session.selectOne("review.findByNum", revNum);
    }

    public int deleteReview(SqlSession session, ReviewVo review) {
        return session.delete("review.deleteReview", review);
    }

    public int updateReview(SqlSession session, Review review) {
        return session.update("review.updateReview", review);
    }


    public int insertReview(SqlSession session, Review review) {
        return session.insert("review.insertReview", review);
    }

    public int insertRevPicture(SqlSession session, ReviewPicture reviewPicture) {
        return session.insert("review.insertReviewPicture", reviewPicture);
    }

    public int deleteReviewPicture(SqlSession session, Long revNum) {
        return session.delete("review.deleteReviewPicture", revNum);
    }

    public List<ReviewComment> findCommentByRevNum(SqlSession session, long revNum) {
        return session.selectList("review.findCommentByRevNum", revNum);
    }

    public int insertReviewComment(SqlSession session, ReviewComment reviewComment) {
        return session.insert("review.insertReviewComment", reviewComment);
    }
}
