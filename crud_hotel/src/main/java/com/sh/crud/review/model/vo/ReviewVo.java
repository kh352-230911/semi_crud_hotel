package com.sh.crud.review.model.vo;

import com.sh.crud.review.model.entity.Review;
import com.sh.crud.review.model.entity.ReviewPicture;

import java.util.ArrayList;
import java.util.List;


public class ReviewVo extends Review {
    private long revPicNum;
    private int revPictureCount;
    private List<ReviewPicture> reviewPictures = new ArrayList<>();

    public long getRevPicNum() {
        return revPicNum;
    }

    public void setRevPicNum(long revPicNum) {
        this.revPicNum = revPicNum;
    }

    public int getRevPictureCount() {
        return revPictureCount;
    }

    public void setRevPictureCount(int revPictureCount) {
        this.revPictureCount = revPictureCount;
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

    public void setValue(String name, String value) {
        switch (name) {
            case "revNum" : setRevNum(Long.parseLong(value)); break;
            case "revId" : setRevId(value); break;
            case "revRoomNum" : setRevRoomNum(value); break;
            case "revTitle" : setRevTitle(value); break;
            case "revContent" : setRevContent(value); break;
            case "revScore" : setRevScore(Integer.parseInt(value)); break;
            default: throw new RuntimeException("부적절한 name 값 : " + name);
        }
    }

    @Override
    public String toString() {
        return "ReviewVo{" +
                "revPicNum=" + revPicNum +
                ", revPictureCount=" + revPictureCount +
                ", reviewPictures=" + reviewPictures +
                "} " + super.toString();
    }
}
