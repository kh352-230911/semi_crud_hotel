package com.sh.crud.ask.model.entity;

import java.time.LocalDateTime;

public class Ask {
    private int askNum;
    private String askId;

    private String askTitle;
    private AskCase askCase;
    private String askContent;
    private LocalDateTime askDate;

    public Ask() {
    }

    public Ask(int askNum, String askId, String askTitle, AskCase askCase, String askContent, LocalDateTime askDate) {
        this.askNum = askNum;
        this.askId = askId;
        this.askTitle = askTitle;
        this.askCase = askCase;
        this.askContent = askContent;
        this.askDate = askDate;
    }

    public long getAskNum() {
        return askNum;
    }

    public void setAskNum(int askNum) {
        this.askNum = askNum;
    }

    public String getAskId() {
        return askId;
    }

    public void setAskId(String askId) {
        this.askId = askId;
    }

    public String getAskTitle() {
        return askTitle;
    }

    public void setAskTitle(String askTitle) {
        this.askTitle = askTitle;
    }

    public AskCase getAskCase() {
        return askCase;
    }

    public void setAskCase(AskCase askCase) {
        this.askCase = askCase;
    }

    public String getAskContent() {
        return askContent;
    }

    public void setAskContent(String askContent) {
        this.askContent = askContent;
    }

    public LocalDateTime getAskDate() {
        return askDate;
    }

    public void setAskDate(LocalDateTime askDate) {
        this.askDate = askDate;
    }

    @Override
    public String toString() {
        return "Ask{" +
                "askNum=" + askNum +
                ", askId='" + askId + '\'' +
                ", askTitle='" + askTitle + '\'' +
                ", askCase=" + askCase +
                ", askContent='" + askContent + '\'' +
                ", askDate=" + askDate +
                '}';
    }
}
