package com.sh.crud.ask.model.service;

import com.sh.crud.ask.model.serivce.AskService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

public class AskServiceTest {
    AskService askService;
    @BeforeEach
    public void beforeEach() {
        this.askService = new AskService();
    }
    @DisplayName("askService는 Null이 아니다.")
    @Test
    public void test1(){
        assertThat(askService).isNotNull();
    }
}
