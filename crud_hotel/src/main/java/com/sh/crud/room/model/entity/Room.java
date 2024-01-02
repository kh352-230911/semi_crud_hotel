package com.sh.crud.room.model.entity;

public class Room {

    private String roomNum;
    private String roomType;
    private String roomBedType;
    private int roomPeople;
    private int roomPrice;
    private int roomBrunch;
    private int roomPool;
    private int roomParking;
    private String roomManagerNum;

    public Room() {
    }

    public Room(String roomNum, String roomType, String roomBedType, int roomPeople, int roomPrice, int roomBrunch, int roomPool, int roomParking, String roomManagerNum) {
        this.roomNum = roomNum;
        this.roomType = roomType;
        this.roomBedType = roomBedType;
        this.roomPeople = roomPeople;
        this.roomPrice = roomPrice;
        this.roomBrunch = roomBrunch;
        this.roomPool = roomPool;
        this.roomParking = roomParking;
        this.roomManagerNum = roomManagerNum;
    }

    public String getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(String roomNum) {
        this.roomNum = roomNum;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public String getRoomBedType() {
        return roomBedType;
    }

    public void setRoomBedType(String roomBedType) {
        this.roomBedType = roomBedType;
    }

    public int getRoomPeople() {
        return roomPeople;
    }

    public void setRoomPeople(int roomPeople) {
        this.roomPeople = roomPeople;
    }

    public int getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(int roomPrice) {
        this.roomPrice = roomPrice;
    }

    public int getRoomBrunch() {
        return roomBrunch;
    }

    public void setRoomBrunch(int roomBrunch) {
        this.roomBrunch = roomBrunch;
    }

    public int getRoomPool() {
        return roomPool;
    }

    public void setRoomPool(int roomPool) {
        this.roomPool = roomPool;
    }

    public int getRoomParking() {
        return roomParking;
    }

    public void setRoomParking(int roomParking) {
        this.roomParking = roomParking;
    }

    public String getRoomManagerNum() {
        return roomManagerNum;
    }

    public void setRoomManagerNum(String roomManagerNum) {
        this.roomManagerNum = roomManagerNum;
    }

    @Override
    public String toString() {
        return "Room{" +
                "roomNum='" + roomNum + '\'' +
                ", roomType='" + roomType + '\'' +
                ", roomBedType='" + roomBedType + '\'' +
                ", roomPeople=" + roomPeople +
                ", roomPrice=" + roomPrice +
                ", roomBrunch=" + roomBrunch +
                ", roomPool=" + roomPool +
                ", roomParking=" + roomParking +
                ", roomManagerNum='" + roomManagerNum + '\'' +
                '}';
    }
}
