package com.sh.crud.manager.model.entity;

public class Manager {
    private String managerNum;
    private String managerId;
    private String managerPwd;
    private String managerName;
    private String managerPhone;
    private String managerEmail;

    public Manager() {
    }

    public Manager(String managerNum, String managerId, String managerPwd, String managerName, String managerPhone, String managerEmail) {
        this.managerNum = managerNum;
        this.managerId = managerId;
        this.managerPwd = managerPwd;
        this.managerName = managerName;
        this.managerPhone = managerPhone;
        this.managerEmail = managerEmail;
    }

    public String getManagerNum() {
        return managerNum;
    }

    public void setManagerNum(String managerNum) {
        this.managerNum = managerNum;
    }

    public String getManagerId() {
        return managerId;
    }

    public void setManagerId(String managerId) {
        this.managerId = managerId;
    }

    public String getManagerPwd() {
        return managerPwd;
    }

    public void setManagerPwd(String managerPwd) {
        this.managerPwd = managerPwd;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public String getManagerPhone() {
        return managerPhone;
    }

    public void setManagerPhone(String managerPhone) {
        this.managerPhone = managerPhone;
    }

    public String getManagerEmail() {
        return managerEmail;
    }

    public void setManagerEmail(String managerEmail) {
        this.managerEmail = managerEmail;
    }

    @Override
    public String toString() {
        return "ManagerServiceTest{" +
                "managerNum='" + managerNum + '\'' +
                ", managerId='" + managerId + '\'' +
                ", managerPwd='" + managerPwd + '\'' +
                ", managerName='" + managerName + '\'' +
                ", managerPhone='" + managerPhone + '\'' +
                ", managerEmail='" + managerEmail + '\'' +
                '}';
    }
}
