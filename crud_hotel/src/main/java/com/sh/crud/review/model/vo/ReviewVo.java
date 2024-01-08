package com.sh.crud.review.model.vo;

import com.sh.crud.review.model.entity.Review;
import com.sh.crud.review.model.entity.ReviewComment;
import com.sh.crud.review.model.entity.ReviewPicture;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


public class ReviewVo extends Review {

    private int reviewPictureCount;
    private int reviewCommentCount;

    private List<ReviewPicture> reviewPictures = new ArrayList<>();
    private List<Long> delFiles = new ArrayList<>();
    private List<ReviewComment> comments;


    public List<ReviewComment> getComments() {
        return comments;
    }

    public void setComments(List<ReviewComment> comments) {
        this.comments = comments;
    }

    public List<Long> getDelFiles() {
        return delFiles;
    }

    public void setDelFiles(List<Long> delFiles) {
        this.delFiles = delFiles;
    }

    public int getReviewPictureCount() {
        return reviewPictureCount;
    }

    public void setReviewPictureCount(int reviewPictureCount) {
        this.reviewPictureCount = reviewPictureCount;
    }

    public void addReviewPicture(ReviewPicture reviewPicture) {
        this.reviewPictures.add(reviewPicture);
    }

    public List<ReviewPicture> getReviewPictures() {
        return reviewPictures;
    }

    public void setReviewPictures(List<ReviewPicture> reviewPictures) {
        this.reviewPictures = reviewPictures;
    }

    public int getReviewCommentCount() {
        return reviewCommentCount;
    }

    public void setReviewCommentCount(int reviewCommentCount) {
        this.reviewCommentCount = reviewCommentCount;
    }

    public void setValue(String name, String value) {
        switch (name) {
            case "revNum" : setRevNum(Long.parseLong(value)); break;
            case "revId" : setRevId(value); break;
            case "revRoomNum" : setRevRoomNum(value); break;
            case "revTitle" : setRevTitle(value); break;
            case "revContent" : setRevContent(value); break;
            case "revScore" : setRevScore(Integer.parseInt(value)); break;
            case "revDate" : setRevDate(LocalDateTime.parse(value)); break;
            case "delFile" : this.delFiles.add(Long.parseLong(value)); break;
            default: throw new RuntimeException("부적절한 name 값 : " + name);
        }
    }

    @Override
    public String toString() {
        return "ReviewVo{" +
                "reviewPictureCount=" + reviewPictureCount +
                "reviewCommentCount=" + reviewCommentCount +
                ", reviewPictures=" + reviewPictures +
                ", delFiles=" + delFiles +
                ", comments=" + comments +
                "} " + super.toString();
    }
}
