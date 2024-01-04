package com.sh.crud.manager.model.service;

import com.sh.crud.manager.model.dao.ManagerDao;
import com.sh.crud.manager.model.entity.Manager;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

import static com.sh.crud.common.SqlSessionTemplate.getSqlSession;

public class ManagerService {

    private ManagerDao managerDao = new ManagerDao();
    public List<Manager> findAll() {
        SqlSession session = getSqlSession();
        List<Manager> managers = managerDao.findAll(session);
        session.close();
        return managers;
    }

    public Manager findById(String id) {
        SqlSession session = getSqlSession();
        Manager manager = managerDao.findById(session, id);
        session.close();
        return manager;
    }

    public List<Manager> findByName(String managerName) {
        SqlSession session = getSqlSession();
        List<Manager> managers = managerDao.findByName(session, managerName);
        session.close();
        return managers;
    }

    public int insertManager(Manager manager) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = managerDao.insertManager(session, manager);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public int updateManager(Manager manager) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = managerDao.updateManager(session, manager);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        }finally {
            session.close();
        }
        return result;
    }

    public int deleteManager(String id) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = managerDao.deleteManager(session, id);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        }finally {
            session.close();
        }
        return result;
    }

    public int updateManagerPassword(Manager manager) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = managerDao.updateMemberPassword(session, manager);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }
}
