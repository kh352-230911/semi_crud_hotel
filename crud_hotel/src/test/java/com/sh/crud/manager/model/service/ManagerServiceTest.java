package com.sh.crud.manager.model.service;

import org.junit.jupiter.api.BeforeEach;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;


public class ManagerServiceTest {

    ManagerService managerService;

    @BeforeEach
    public void beforeEach() {
        this.managerService = new ManagerService();
    }
    @DisplayName("ManagerService객체는 Null이 아니다")
    @Test
    public void test1() {
        assertThat(managerService).isNotNull();
    }



}
