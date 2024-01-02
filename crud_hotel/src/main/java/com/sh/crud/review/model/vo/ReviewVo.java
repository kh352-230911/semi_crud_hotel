package com.sh.crud.review.model.vo;

import com.sh.crud.member.model.entity.Member;
import com.sh.crud.review.model.entity.Review;

public class ReviewVo extends Review {
    private Member member;

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    @Override
    public String toString() {
        return "ReviewVo{" +
                "member=" + member +
                "} " + super.toString();
    }
}
