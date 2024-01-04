package com.sh.crud.review.model.vo;

import com.sh.crud.member.model.entity.Member;
import com.sh.crud.review.model.entity.RevPicture;
import com.sh.crud.review.model.entity.Review;

import java.util.ArrayList;
import java.util.List;

public class ReviewVo extends Review {

    private Member member;

    private int attachCount;
    private List<RevPicture> attachments = new ArrayList<>();
    private List<Long> delFiles = new ArrayList<>();

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public int getAttachCount() {
        return attachCount;
    }

    public void setAttachCount(int attachCount) {
        this.attachCount = attachCount;
    }

    public void addAttachment(RevPicture attachment) {
        this.attachments.add(attachment);
    }

    public List<RevPicture> getAttachments() {
        return attachments;
    }

    public void setAttachments(List<RevPicture> attachments) {
        this.attachments = attachments;
    }

    public List<Long> getDelFiles() {
        return delFiles;
    }

    public void setDelFiles(List<Long> delFiles) {
        this.delFiles = delFiles;
    }

    public void setValue(String name, String value) {
        switch (name) {
            case "revNum" : setRevNum(Long.parseLong(value)); break;
            case "revId" : setRevId(value); break;
            case "revRoomNum" : setRevRoomNum(value); break;
            case "revTitle" : setRevTitle(value); break;
            case "revContent" : setRevContent(value); break;
            case "revScore" : setRevScore(Integer.parseInt(value)); break;
            case "delFile" : this.delFiles.add(Long.parseLong(value)); break;
            default: throw new RuntimeException("부적절한 name 값입니다. : " + name);
        }
    }

    @Override
    public String toString() {
        return "ReviewVo{" +
                "member=" + member +
                ", attachCount=" + attachCount +
                ", attachments=" + attachments +
                ", delFiles=" + delFiles +
                "} " + super.toString();
    }
}
