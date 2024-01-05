package com.sh.crud.ask.model.vo;

import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.ask.model.entity.AskAnswer;

import java.util.ArrayList;
import java.util.List;

public class AskVo extends Ask {
    private List<AskAnswer> askAnswers = new ArrayList<>();

    public AskVo() {
    }

    public List<AskAnswer> getAskAnswers() {
        return askAnswers;
    }

    public void setAskAnswers(List<AskAnswer> askAnswers) {
        this.askAnswers = askAnswers;
    }

    @Override
    public String toString() {
        return "AskVo{" +
                "askAnswers=" + askAnswers +
                "} " + super.toString();
    }
}
