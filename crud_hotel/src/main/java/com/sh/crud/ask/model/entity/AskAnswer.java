package com.sh.crud.ask.model.entity;

import java.time.LocalDateTime;

public class AskAnswer {
    private int ansNum;
    private String ansManagerNum;
    private String ansTitle;
    private String ansContent;
    private LocalDateTime ansDate;
    private int ansAskNum;

    public AskAnswer() {
    }

    public AskAnswer(int ansNum, String ansManagerNum, String ansTitle, String ansContent, LocalDateTime ansDate, int ansAskNum) {
        this.ansNum = ansNum;
        this.ansManagerNum = ansManagerNum;
        this.ansTitle = ansTitle;
        this.ansContent = ansContent;
        this.ansDate = ansDate;
        this.ansAskNum = ansAskNum;
    }

    public int getAnsNum() {
        return ansNum;
    }

    public void setAnsNum(int ansNum) {
        this.ansNum = ansNum;
    }

    public String getAnsManagerNum() {
        return ansManagerNum;
    }

    public void setAnsManagerNum(String ansManagerNum) {
        this.ansManagerNum = ansManagerNum;
    }

    public String getAnsTitle() {
        return ansTitle;
    }

    public void setAnsTitle(String ansTitle) {
        this.ansTitle = ansTitle;
    }

    public String getAnsContent() {
        return ansContent;
    }

    public void setAnsContent(String ansContent) {
        this.ansContent = ansContent;
    }

    public LocalDateTime getAnsDate() {
        return ansDate;
    }

    public void setAnsDate(LocalDateTime ansDate) {
        this.ansDate = ansDate;
    }

    public int getAnsAskNum() {
        return ansAskNum;
    }

    public void setAnsAskNum(int ansAskNum) {
        this.ansAskNum = ansAskNum;
    }

    @Override
    public String toString() {
        return "AskAnswer{" +
                "ansNum=" + ansNum +
                ", ansManagerNum='" + ansManagerNum + '\'' +
                ", ansTitle='" + ansTitle + '\'' +
                ", ansContent='" + ansContent + '\'' +
                ", ansDate=" + ansDate +
                ", ansAskNum=" + ansAskNum +
                '}';
    }
}
