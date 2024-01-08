package com.sh.crud.pride.model.entity;

public class Pride {
    private String pride;
    private int discount;
    private int resCount;

    public Pride(String pride, int discount, int resCount) {
        this.pride = pride;
        this.discount = discount;
        this.resCount = resCount;
    }

    public Pride() {
    }

    public String getPride() {
        return pride;
    }

    public void setPride(String pride) {
        this.pride = pride;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public int getResCount() {
        return resCount;
    }

    public void setResCount(int resCount) {
        this.resCount = resCount;
    }

    @Override
    public String toString() {
        return "Pride{" +
                "pride='" + pride + '\'' +
                ", discount=" + discount +
                ", resCount=" + resCount +
                '}';
    }
}
