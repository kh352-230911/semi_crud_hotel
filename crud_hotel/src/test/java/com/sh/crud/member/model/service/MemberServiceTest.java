package com.sh.crud.member.model.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.*;

import static org.assertj.core.api.Assertions.assertThat;
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



}