package com.sh.crud.ask.model.serivce;

import com.sh.crud.ask.model.dao.AskDao;
import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.ask.model.vo.AskVo;
import com.sh.crud.manager.model.entity.Manager;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.Map;

import static com.sh.crud.common.SqlSessionTemplate.getSqlSession;

public class AskService {
    AskDao askDao = new AskDao();

    public List<Ask> findAll() {
        SqlSession session = getSqlSession();
        List<Ask> asks = askDao.findAll(session);
        session.close();
        return asks;
    }

    public Ask findById(String id) {
        SqlSession session = getSqlSession();
        Ask ask = askDao.findById(session, id);
        session.close();
        return ask;
    }

    public int insertAsk(Ask ask) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = askDao.insertAsk(session, ask);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public int updateAsk(Ask ask) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = askDao.updateAsk(session, ask);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public int deleteAsk(Ask ask) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = askDao.deleteAsk(session, ask);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public List<AskVo> findByAsks(String id) {
        SqlSession session = getSqlSession();
        List<AskVo> asks = askDao.findByAsks(session, id);
        session.close();
        return asks;
    }

    public int getTotalCount() {
        SqlSession session = getSqlSession();
        int totalCount = askDao.getTotalCount(session);
        session.close();
        return totalCount;
    }

    public List<AskVo> findAllAsk() {
        SqlSession session = getSqlSession();
        List<AskVo> asks = askDao.findAllAsk(session);
        session.close();
        return asks;
    }
}
