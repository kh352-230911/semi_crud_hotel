package com.sh.crud.review.model.entity;

public class ReviewPicture {

    private long revPictureNum;
    private long revNum;
    private String originalFilename;
    private String renamedFilename;
    private long revPicNum;

    public ReviewPicture() {
    }

    public ReviewPicture(long revPictureNum, long revNum, String originalFilename, String renamedFilename, long revPicNum) {
        this.revPictureNum = revPictureNum;
        this.revNum = revNum;
        this.originalFilename = originalFilename;
        this.renamedFilename = renamedFilename;
        this.revPicNum = revPicNum;
    }

    public long getRevPictureNum() {
        return revPictureNum;
    }

    public void setRevPictureNum(long revPictureNum) {
        this.revPictureNum = revPictureNum;
    }

    public String getOriginalFilename() {
        return originalFilename;
    }

    public void setOriginalFilename(String originalFilename) {
        this.originalFilename = originalFilename;
    }

    public String getRenamedFilename() {
        return renamedFilename;
    }

    public void setRenamedFilename(String renamedFilename) {
        this.renamedFilename = renamedFilename;
    }

    public long getRevPicNum() {
        return revPicNum;
    }

    public void setRevPicNum(long revPicNum) {
        this.revPicNum = revPicNum;
    }

    public long getRevNum() {
        return revNum;
    }

    public void setRevNum(long revNum) {
        this.revNum = revNum;
    }

    @Override
    public String toString() {
        return "ReviewPicture{" +
                "revPictureNum=" + revPictureNum +
                ", revNum=" + revNum +
                ", originalFilename='" + originalFilename + '\'' +
                ", renamedFilename='" + renamedFilename + '\'' +
                ", revPicNum=" + revPicNum +
                '}';
    }
}
