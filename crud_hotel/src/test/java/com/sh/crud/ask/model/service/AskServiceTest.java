package com.sh.crud.ask.model.service;

import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.ask.model.entity.AskCase;
import com.sh.crud.ask.model.serivce.AskService;
import com.sh.crud.manager.model.entity.Manager;
import com.sh.crud.member.model.entity.Member;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.assertj.core.api.Assertions.as;
import static org.assertj.core.api.Assertions.assertThat;

public class AskServiceTest {
    AskService askService;
    @BeforeEach
    public void beforeEach() {
        this.askService = new AskService();
    }
    @DisplayName("askService객체는 Null이 아니다.")
    @Test
    public void test1(){
        assertThat(askService).isNotNull();
    }

    @DisplayName("1:1문의 전체조회")
    @Test
    public void test2(){
        List<Ask> asks = askService.findAll();
        System.out.println(asks);

        assertThat(asks)
                .isNotNull()
                .isNotEmpty();
        asks.forEach((ask) -> {
            System.out.println(ask);
            assertThat(ask.getAskId()).isNotNull();
            assertThat(ask.getAskNum()).isGreaterThan(0);
            assertThat(ask.getAskTitle()).isNotNull();
            assertThat(ask.getAskCase()).isNotNull();
            assertThat(ask.getAskContent()).isNotNull();
            assertThat(ask.getAskDate()).isNotNull();
        });
    }

    @DisplayName("1:1문의 한건조회")
    @Test
    public void test4(){
        String id = "honggd";
        Ask ask = askService.findById(id);
        System.out.println(ask);

        assertThat(ask).isNotNull();

        assertThat(ask.getAskId()).isNotNull();
        assertThat(ask.getAskNum()).isGreaterThan(0);
        assertThat(ask.getAskTitle()).isNotNull();
        assertThat(ask.getAskCase()).isNotNull();
        assertThat(ask.getAskContent()).isNotNull();
        assertThat(ask.getAskDate()).isNotNull();

    }
//    @Disabled
    @DisplayName("1:1문의 등록")
    @Test
    public void test5(){
        int num = 8;
        String title = "주차문의요";
        String askId = "sinsa";
        String content = "주차장은 어디있나요오오?";
        String askCase = "기타문의";

        Ask ask = new Ask();
        ask.setAskNum(num);
        ask.setAskTitle(title);
        ask.setAskId(askId);
        ask.setAskContent(content);
        ask.setAskCase(AskCase.valueOf(askCase));
        System.out.println(ask);

        int result = askService.insertAsk(ask);
        assertThat(result).isGreaterThan(0);

    }
//    @Disabled
    @DisplayName("1:1문의 수정")
    @Test
    public void test6(){
        String id = "leessin";
        Ask ask = askService.findById(id);

        String newContent = "설날에도 영업하나요?";
        String newTitle = "설날문의";
        ask.setAskContent(newContent);
        ask.setAskTitle(newTitle);

        int result = askService.updateAsk(ask);
        assertThat(result).isGreaterThan(0);

        Ask ask1 = askService.findById(id);
        assertThat(ask1.getAskContent()).isEqualTo(newContent);
        assertThat(ask1.getAskTitle()).isEqualTo(newTitle);
    }
//    @Disabled
    @DisplayName("1:1문의 삭제")
    @Test
    public void test7(){
        String id = "leessin";
        Ask ask = askService.findById(id);
        System.out.println(ask);
        assertThat(ask).isNotNull();

        int result = askService.deleteAsk(ask);
        assertThat(result).isGreaterThan(0);

        Ask ask1 = askService.findById(id);
        assertThat(ask1).isNull();

    }

}
