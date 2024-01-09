package com.sh.crud.pride.model.entity;

public class TbPride {


    private String pride;
    private double discount;

    private int res_count;


    public TbPride() {
    }


    public TbPride(String pride, double discount, int res_count) {
        this.pride = pride;
        this.discount = discount;
        this.res_count = res_count;
    }


    public String getPride() {
        return pride;
    }

    public void setPride(String pride) {
        this.pride = pride;
    }



    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getRes_count() {
        return res_count;
    }

    public void setRes_count(int res_count) {
        this.res_count = res_count;

    }

    @Override
    public String toString() {

        return "TbPride{" +
                "pride='" + pride + '\'' +
                ", discount=" + discount +
                ", res_count=" + res_count +

                '}';
    }
}
