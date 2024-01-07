package com.sh.crud.ask.model.dao;

import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.ask.model.vo.AskVo;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

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

    public List<AskVo> findByAsks(SqlSession session, String id) {
        return session.selectList("ask.findById", id);
    }


    public int getTotalCount(SqlSession session) {
        return session.selectOne("ask.getTotalCount");
    }

    public List<AskVo> findAllAsk(SqlSession session) {
        return session.selectList("ask.findAllAsk");
    }
}
