package com.sh.crud.review.model.entity;

import java.time.LocalDateTime;

public class ReviewComment {

    private long comNum;
    private String comId;
    private String comContent;
    private LocalDateTime comDate;
    private long comRevNum;

    public ReviewComment() {
    }

    public ReviewComment(long comNum, String comId, String comContent, LocalDateTime comDate, long comRevNum) {
        this.comNum = comNum;
        this.comId = comId;
        this.comContent = comContent;
        this.comDate = comDate;
        this.comRevNum = comRevNum;
    }

    public long getComNum() {
        return comNum;
    }

    public void setComNum(long comNum) {
        this.comNum = comNum;
    }

    public String getComId() {
        return comId;
    }

    public void setComId(String comId) {
        this.comId = comId;
    }

    public String getComContent() {
        return comContent;
    }

    public void setComContent(String comContent) {
        this.comContent = comContent;
    }

    public LocalDateTime getComDate() {
        return comDate;
    }

    public void setComDate(LocalDateTime comDate) {
        this.comDate = comDate;
    }

    public long getComRevNum() {
        return comRevNum;
    }

    public void setComRevNum(long comRevNum) {
        this.comRevNum = comRevNum;
    }

    @Override
    public String toString() {
        return "ReviewComment{" +
                "comNum=" + comNum +
                ", comId='" + comId + '\'' +
                ", comContent='" + comContent + '\'' +
                ", comDate=" + comDate +
                ", comRevNum=" + comRevNum +
                '}';
    }
}
