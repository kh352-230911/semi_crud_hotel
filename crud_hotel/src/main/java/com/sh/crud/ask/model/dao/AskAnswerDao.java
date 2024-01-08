package com.sh.crud.ask.model.dao;

import com.sh.crud.ask.model.entity.AskAnswer;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class AskAnswerDao {
    public List<AskAnswer> findByAnswerId(SqlSession session, int num) {
            return session.selectList("askAnswer.findByAnswerId", num);
    }

    public int insertAnswer(SqlSession session, AskAnswer askAnswer) {
        return session.insert("askAnswer.insertAnswer", askAnswer);
    }

    public AskAnswer findByAnswerNum(SqlSession session, int ansnum) {
        return session.selectOne("askAnswer.findByAnswerNum", ansnum);
    }

    public int deleteAnswer(SqlSession session, AskAnswer askAnswer) {
        return session.delete("askAnswer.deleteAnswer", askAnswer);
    }


    public int saveAnswer(SqlSession session, AskAnswer askAnswer) {
        return session.insert("askAnswer.saveAnswer",askAnswer);
    }
}
