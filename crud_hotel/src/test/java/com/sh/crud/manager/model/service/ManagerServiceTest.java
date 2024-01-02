package com.sh.crud.manager.model.service;

import com.sh.crud.manager.model.entity.Manager;
import org.junit.jupiter.api.BeforeEach;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.util.List;

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

    @DisplayName("매니저 전체 조회")
    @Test
    public void test2() {
        List<Manager> managers = managerService.findAll();
        System.out.println(managers);

        assertThat(managers)
                .isNotNull()
                .isNotEmpty();
        managers.forEach((manager) -> {
            System.out.println(manager);
            assertThat(manager.getManagerId()).isNotNull();
            assertThat(manager.getManagerEmail()).isNotNull();
            assertThat(manager.getManagerNum()).isNotNull();
            assertThat(manager.getManagerPwd()).isNotNull();
            assertThat(manager.getManagerPhone()).isNotNull();
            assertThat(manager.getManagerName()).isNotNull();
        });
    }
    @DisplayName("존재하는 매니저 정상적으로 조회")
    @Test
    public void test3() {
        Manager manager = managerService.findById("sd01");
        System.out.println(manager);

        assertThat(manager.getManagerId()).isNotNull();
        assertThat(manager.getManagerName()).isNotNull();
        assertThat(manager.getManagerNum()).isNotNull();
        assertThat(manager.getManagerEmail()).isNotNull();
        assertThat(manager.getManagerPwd()).isNotNull();
        assertThat(manager.getManagerPhone()).isNotNull();

    }
    @DisplayName("이름 검색")
    @Test
    public void test4() {
        String managerName = "강동원";
        List<Manager> managers = managerService.findByName(managerName);

        assertThat(managers).isNotNull().allSatisfy((manager) -> {
           assertThat(manager.getManagerName()).isEqualTo(managerName);
        });
    }
    @Disabled
    @DisplayName("매니저 회원가입")
    @Test
    public void test5() {
        String num = "SD03";
        String id = "pr03";
        String pwd = "1234pr03@";
        String name = "유승호";
        String phone = "01033324455";

        Manager manager =
                new Manager(num ,id, pwd, name, phone, null);
        int result = managerService.insertManager(manager);

        assertThat(result).isGreaterThan(0);

        Manager manager1 = managerService.findById(id);
        assertThat(manager1)
                .isNotNull()
                .satisfies((manager2) -> {
                    assertThat(manager2.getManagerId()).isEqualTo(id);
                    assertThat(manager2.getManagerName()).isEqualTo(name);
                    assertThat(manager2.getManagerNum()).isEqualTo(num);
                    assertThat(manager2.getManagerPwd()).isEqualTo(pwd);
                    assertThat(manager2.getManagerPhone()).isEqualTo(phone);
                });

    }
    @Disabled
    @DisplayName("매니저 정보수정")
    @Test
    public void test6(){
        String id = "pr03";
        Manager manager = managerService.findById(id);

        String newPwd = "1234oo03@";
        manager.setManagerPwd(newPwd);

        int result = managerService.updateManager(manager);
        assertThat(result).isGreaterThan(0);

        Manager manager1 = managerService.findById(id);
        assertThat(manager1.getManagerPwd()).isEqualTo(newPwd);
        System.out.println(manager1);

    }
    @Disabled
    @DisplayName("매니저 삭제")
    @Test
    public void test7(){
        String id = "pr03";
        Manager manager = managerService.findById(id);
        assertThat(manager).isNotNull();

        int result = managerService.deleteManager(id);
        assertThat(result).isGreaterThan(0);


        Manager manager1 = managerService.findById(id);
        assertThat(manager1).isNull();
    }


}
