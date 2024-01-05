package com.sh.crud.member.model.service;

import com.sh.crud.member.model.entity.Member;
import com.sh.crud.member.model.entity.Pride;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.*;

import java.time.LocalDateTime;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.catchThrowable;
import static org.junit.jupiter.api.Assertions.*;

public class MemberServiceTest {

    MemberService memberService;

    @BeforeEach
    public void beforeEach(){
        this.memberService = new MemberService();
    }

    @DisplayName("MemberService객체는 null이 아니다.")
    @Test
    public void test1(){
        assertThat(memberService).isNotNull();
    }


    @DisplayName("존재하는 회원이 정상적으로 조회된다.")
    @Test
    public void test2(){
        String id="honggd";
        Member member = memberService.findById(id);
        System.out.println(member);
        // 객체
//        assertThat(member).isNotNull();
        // 필드
        assertThat(member.getMemberId()).isNotNull();
        assertThat(member.getMemberPassword()).isNotNull();
        assertThat(member.getMemberName()).isNotNull();
        assertThat(member.getMemberPhone()).isNotNull();
        assertThat(member.getMemberPride()).isNotNull();
    }

    @DisplayName("존재하지않는 회원이 NULL이 반환되어야 한다.")
    @Test
    public void test3(){
        Member member = memberService.findById("askasdfasdfasdfasfdadasfdasdfasdf");
        assertThat(member).isNull();
    }

    @DisplayName("회원 전체 조회")
    @Test
    public void test4(){
        List<Member> members = memberService.findAll();
        assertThat(members)
                .isNotNull()
                .isNotEmpty();
        members.forEach((member) -> {
            assertThat(member.getMemberId()).isNotNull();
            assertThat(member.getMemberPassword()).isNotNull();
            assertThat(member.getMemberName()).isNotNull();
            assertThat(member.getMemberPhone()).isNotNull();
            assertThat(member.getMemberPride()).isNotNull();
        });

    }
    @Disabled
    @Order(1)
    @DisplayName("회원가입")
    @Test
    public void test5() {

        String id = "bbb";
        String password = "bbb123@";
        String name = "홍동";
        String phone = "01000001300";
        LocalDateTime loginDate = LocalDateTime.now(); // 현재 날짜와 시간
        String email = ""; // 또는 적절한 이메일 값
        String address = ""; // 또는 적절한 주소 값
        int bookingCount = 0;

        Member member = new Member(id, password, name, phone, email, address, loginDate, Pride.bronze, bookingCount);

        // 2. Member 객체를 데이터베이스에 저장
        int result=memberService.registerMember(member);
        assertThat(result).isEqualTo(1);

        // 3. 저장된 데이터 검증
        Member savedMember = memberService.findById(id);
        assertThat(savedMember).isNotNull();
        assertThat(savedMember.getMemberId()).isEqualTo(id);
        assertThat(savedMember.getMemberName()).isEqualTo(name);
    }

    @Disabled
    @Order(2)
    @DisplayName("회원가입시 오류 체크")
    @Test
    public void test6() {
        String id = "bbb";
        String password = "bbb123@";
        String name = "홍동";
        String phone = "01000001300";
        LocalDateTime loginDate = LocalDateTime.now(); // 현재 날짜와 시간
        int bookingCount = 0;


        Member member = new Member(id, password, name, phone, null, null, loginDate, Pride.bronze, bookingCount);
        Throwable th = catchThrowable(() -> {
            int result = memberService.registerMember(member);
        });
        assertThat(th).isInstanceOf(Exception.class);
    }

    @Disabled
    @Order(3)
    @DisplayName("회원정보 수정")
    @Test
    public void test7(){
        String id = "honggd4";
        Member member = memberService.findById(id);

        String newName=member.getMemberName()+"길동";
        String newPhone="01012345678";
        String newEmail="honggdgd@naver.com";
        String newAddress="서울";

        member.setMemberName(newName);
        member.setMemberPhone(newPhone);
        member.setMemberEmail(newEmail);
        member.setMemberAddress(newAddress);

        int result = memberService.updateMember(member);
        assertThat(result).isGreaterThan(0);

        Member member2 = memberService.findById(id);
        assertThat(member2.getMemberName()).isEqualTo(newName);
        assertThat(member2.getMemberPhone()).isEqualTo(newPhone);
        assertThat(member2.getMemberAddress()).isEqualTo(newAddress);
        assertThat(member2.getMemberEmail()).isEqualTo(newEmail);

    }
    @Disabled
    @Order(4)
    @DisplayName("회원 비밀번호 수정")
    @Test
    public void test8() {
        // update member set password = ? where id = ?
        String id = "honggd4";
        Member member = memberService.findById(id);
        String newPassword = "qwr1234@";
        member.setMemberPassword(newPassword);

        int result = memberService.updateMemberPassword(member);

        assertThat(result).isGreaterThan(0);
        Member member2 = memberService.findById(id);
        assertThat(member2.getMemberPassword()).isEqualTo(newPassword);
    }

    @Disabled
    @Order(5)
    @DisplayName("회원 삭제")
    @Test
    public void test9() {
        String id = "honggd3";
        Member member = memberService.findById(id);
        assertThat(member).isNotNull();

        int result = memberService.deleteMember(id);
        assertThat(result).isGreaterThan(0);

        Member member2 = memberService.findById(id);
        assertThat(member2).isNull();
    }

}