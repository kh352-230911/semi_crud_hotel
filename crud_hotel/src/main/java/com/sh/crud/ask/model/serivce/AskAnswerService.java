package com.sh.crud.ask.model.serivce;

import com.sh.crud.ask.model.dao.AskAnswerDao;
import com.sh.crud.ask.model.entity.AskAnswer;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

import static com.sh.crud.common.SqlSessionTemplate.getSqlSession;

public class AskAnswerService {
    AskAnswerDao askAnswerDao = new AskAnswerDao();

    public int insertAnswer(AskAnswer askAnswer) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = askAnswerDao.insertAnswer(session, askAnswer);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        }finally {
            session.close();
        }
        return result;
    }

    public List<AskAnswer> findByAnswerId(int num) {
        SqlSession session = getSqlSession();
        List<AskAnswer> askAnswers = askAnswerDao.findByAnswerId(session, num);
        session.close();
        return askAnswers;
    }

    public AskAnswer findByAnswerNum(int ansnum) {
        SqlSession session = getSqlSession();
        AskAnswer askAnswers = askAnswerDao.findByAnswerNum(session, ansnum);
        session.close();
        return askAnswers;
    }

    public int deleteAnswer(AskAnswer askAnswer) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = askAnswerDao.deleteAnswer(session, askAnswer);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        }finally {
            session.close();
        }
        return result;
    }


    public int saveAnswer(AskAnswer askAnswer) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = askAnswerDao.saveAnswer(session,askAnswer);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        }finally {
            session.close();
        }
        return result;
    }
}
