package com.sh.crud.manager.model.dao;

import com.sh.crud.manager.model.entity.Manager;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ManagerDao {
    public List<Manager> findAll(SqlSession session) {
        return session.selectList("manager.findAll", session);
    }

    public Manager findById(SqlSession session, String id) {
        return session.selectOne("manager.findById", id);
    }

    public List<Manager> findByName(SqlSession session, String managerName) {
        return session.selectList("manager.findByName", managerName);
    }

    public int insertManager(SqlSession session, Manager manager) {
        return session.insert("manager.insertManager", manager);
    }

    public int updateManager(SqlSession session, Manager manager) {
        return session.update("manager.updateManager", manager);
    }

    public int deleteManager(SqlSession session, String id) {
        return session.delete("manager.deleteManager", id);
    }

    public int updateMemberPassword(SqlSession session, Manager manager) {
        return session.update("manager.updateMemberPassword", manager);
    }
}
