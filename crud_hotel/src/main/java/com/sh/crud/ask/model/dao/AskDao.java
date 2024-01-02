package com.sh.crud.ask.model.dao;

import com.sh.crud.ask.model.entity.Ask;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class AskDao {
    public List<Ask> findAll(SqlSession session) {
        return session.selectList("ask.findAll", session);
    }

    public Ask findById(SqlSession session, String id) {
        return session.selectOne("ask.findById", id);
    }

    public int insertAsk(SqlSession session, Ask ask) {
        return session.insert("ask.insertAsk", ask);
    }

    public int updateAsk(SqlSession session, Ask ask) {
        return session.update("ask.updateAsk", ask);
    }

    public int deleteAsk(SqlSession session, Ask ask) {
        return session.delete("ask.deleteAsk", ask);
    }
}
