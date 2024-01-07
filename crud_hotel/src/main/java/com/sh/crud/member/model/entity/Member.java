package com.sh.crud.member.model.entity;

import java.time.LocalDateTime;

public class Member {

    private String memberId;
    private String memberPassword;
    private String memberName;
    private String memberPhone;
    private String memberEmail;
    private String memberAddress;
    private LocalDateTime memberLoginDate;
    private Pride memberPride;
    private int bookingCount;

    public Member() {

    }

    public Member(String memberId, String memberPassword, String memberName, String memberPhone, String memberEmail, String memberAddress, LocalDateTime memberLoginDate, Pride memberPride, int bookingCount) {
        this.memberId = memberId;
        this.memberPassword = memberPassword;
        this.memberName = memberName;
        this.memberPhone = memberPhone;
        this.memberEmail = memberEmail;
        this.memberAddress = memberAddress;
        this.memberLoginDate = memberLoginDate;
        this.memberPride = memberPride;
        this.bookingCount = bookingCount;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getMemberPassword() {
        return memberPassword;
    }

    public void setMemberPassword(String memberPassword) {
        this.memberPassword = memberPassword;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getMemberPhone() {
        return memberPhone;
    }

    public void setMemberPhone(String memberPhone) {
        this.memberPhone = memberPhone;
    }

    public String getMemberEmail() {
        return memberEmail;
    }

    public void setMemberEmail(String memberEmail) {
        this.memberEmail = memberEmail;
    }

    public String getMemberAddress() {
        return memberAddress;
    }

    public void setMemberAddress(String memberAddress) {
        this.memberAddress = memberAddress;
    }

    public LocalDateTime getMemberLoginDate() {
        return memberLoginDate;
    }

    public void setMemberLoginDate(LocalDateTime memberLoginDate) {
        this.memberLoginDate = memberLoginDate;
    }

    public Pride getMemberPride() {
        return memberPride;
    }

    public void setMemberPride(Pride memberPride) {
        this.memberPride = memberPride;
    }

    public int getBookingCount() {
        return bookingCount;
    }

    public void setBookingCount(int bookingCount) {
        this.bookingCount = bookingCount;
    }

    @Override
    public String toString() {
        return "Member{" +
                "memberId='" + memberId + '\'' +
                ", memberPassword='" + memberPassword + '\'' +
                ", memberName='" + memberName + '\'' +
                ", memberPhone='" + memberPhone + '\'' +
                ", memberEmail='" + memberEmail + '\'' +
                ", memberAddress='" + memberAddress + '\'' +
                ", memberLoginDate=" + memberLoginDate +
                ", memberPride=" + memberPride +
                ", bookingCount=" + bookingCount +
                '}';
    }
}

