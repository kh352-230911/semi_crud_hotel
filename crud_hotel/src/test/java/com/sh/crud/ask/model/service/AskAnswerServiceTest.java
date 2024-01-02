package com.sh.crud.ask.model.service;

import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.ask.model.entity.AskAnswer;
import com.sh.crud.ask.model.serivce.AskAnswerService;
import com.sh.crud.ask.model.serivce.AskService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

class AskAnswerServiceTest {

    AskAnswerService askAnswerService;

    @BeforeEach
    public void beforeEach() {
        this.askAnswerService = new AskAnswerService();

    }
    @DisplayName("askAnswerService객체는 Null이 아니다.")
    @Test
    public void test1(){
        assertThat(askAnswerService).isNotNull();
    }

    @DisplayName("1:1문의 특정 한건 조회")
    @Test
    public void test2(){
        int num = 1;
        List<AskAnswer> askAnswers = askAnswerService.findByAnswerId(num);
        assertThat(askAnswers)
                .isNotNull()
                .allSatisfy(askAnswer -> {
                    assertThat(askAnswer.getAnsNum()).isEqualTo(num);
                    assertThat(askAnswer.getAnsManagerNum()).isNotNull();
                    assertThat(askAnswer.getAnsTitle()).isNotNull();
                    assertThat(askAnswer.getAnsContent()).isNotNull();
                    assertThat(askAnswer.getAnsDate()).isNotNull();
                    assertThat(askAnswer.getAnsAskNum()).isGreaterThan(0);
                });
        System.out.println(askAnswers);
    }
    @Disabled
    @DisplayName("1:1문의 댓글 등록")
    @Test
    public void test3(){
        int ansnum = 2;
        String managerNum = "SW01";
        int asknum = 8;

        AskAnswer askAnswer = new AskAnswer();
        askAnswer.setAnsNum(ansnum);
        askAnswer.setAnsManagerNum(managerNum);
        askAnswer.setAnsAskNum(asknum);

        int result = askAnswerService.insertAnswer(askAnswer);
        assertThat(result).isGreaterThan(0);
        System.out.println(askAnswer);

    }
    @Disabled
    @DisplayName("1:1문의 댓글 삭제")
    @Test
    public void test4(){
        int ansnum = 2;
        AskAnswer askAnswer = askAnswerService.findByAnswerNum(ansnum);
        System.out.println(askAnswer);
        assertThat(askAnswer).isNotNull();

        int result = askAnswerService.deleteAnswer(askAnswer);
        assertThat(result).isGreaterThan(0);

        AskAnswer ask1 = askAnswerService.findByAnswerNum(ansnum);
        assertThat(ask1).isNull();
    }

}