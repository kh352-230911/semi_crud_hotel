package com.sh.crud.ask.model.entity;

import java.time.LocalDateTime;

public class Ask {
    private long askNum;
    private String askId;
    private String askRoomNum;
    private String askTitle;
    private String askCase;
    private String askContent;
    private LocalDateTime askDate;

    public Ask() {
    }

    public Ask(long askNum, String askId, String askRoomNum, String askTitle, String askCase, String askContent, LocalDateTime askDate) {
        this.askNum = askNum;
        this.askId = askId;
        this.askRoomNum = askRoomNum;
        this.askTitle = askTitle;
        this.askCase = askCase;
        this.askContent = askContent;
        this.askDate = askDate;
    }

    public long getAskNum() {
        return askNum;
    }

    public void setAskNum(long askNum) {
        this.askNum = askNum;
    }

    public String getAskId() {
        return askId;
    }

    public void setAskId(String askId) {
        this.askId = askId;
    }

    public String getAskRoomNum() {
        return askRoomNum;
    }

    public void setAskRoomNum(String askRoomNum) {
        this.askRoomNum = askRoomNum;
    }

    public String getAskTitle() {
        return askTitle;
    }

    public void setAskTitle(String askTitle) {
        this.askTitle = askTitle;
    }

    public String getAskCase() {
        return askCase;
    }

    public void setAskCase(String askCase) {
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
                ", askRoomNum='" + askRoomNum + '\'' +
                ", askTitle='" + askTitle + '\'' +
                ", askCase='" + askCase + '\'' +
                ", askContent='" + askContent + '\'' +
                ", askDate=" + askDate +
                '}';
    }
}
