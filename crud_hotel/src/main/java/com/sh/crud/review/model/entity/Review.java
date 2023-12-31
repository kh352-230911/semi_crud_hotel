package com.sh.crud.review.model.entity;

import java.time.LocalDateTime;

public class Review {
    private long revNum;
    private String revId;
    private String revRoomNum;
    private String revTitle;
    private String revContent;
    private int revScore;
    private LocalDateTime revDate;

    public Review() {
    }

    public Review(long revNum, String revId, String revRoomNum, String revTitle, String revContent, int revScore, LocalDateTime revDate) {
        this.revNum = revNum;
        this.revId = revId;
        this.revRoomNum = revRoomNum;
        this.revTitle = revTitle;
        this.revContent = revContent;
        this.revScore = revScore;
        this.revDate = revDate;
    }

    public long getRevNum() {
        return revNum;
    }

    public void setRevNum(long revNum) {
        this.revNum = revNum;
    }

    public String getRevId() {
        return revId;
    }

    public void setRevId(String revId) {
        this.revId = revId;
    }

    public String getRevRoomNum() {
        return revRoomNum;
    }

    public void setRevRoomNum(String revRoomNum) {
        this.revRoomNum = revRoomNum;
    }

    public String getRevTitle() {
        return revTitle;
    }

    public void setRevTitle(String revTitle) {
        this.revTitle = revTitle;
    }

    public String getRevContent() {
        return revContent;
    }

    public void setRevContent(String revContent) {
        this.revContent = revContent;
    }

    public int getRevScore() {
        return revScore;
    }

    public void setRevScore(int revScore) {
        this.revScore = revScore;
    }

    public LocalDateTime getRevDate() {
        return revDate;
    }

    public void setRevDate(LocalDateTime revDate) {
        this.revDate = revDate;
    }

    @Override
    public String toString() {
        return "Review{" +
                "revNum=" + revNum +
                ", revId='" + revId + '\'' +
                ", revRoomNum='" + revRoomNum + '\'' +
                ", revTitle='" + revTitle + '\'' +
                ", revContent='" + revContent + '\'' +
                ", revScore='" + revScore + '\'' +
                ", revDate=" + revDate +
                '}';
    }
}
