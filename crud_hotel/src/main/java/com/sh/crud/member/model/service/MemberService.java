package com.sh.crud.member.model.service;

import com.sh.crud.member.model.dao.MemberDao;
import com.sh.crud.member.model.entity.Member;
import com.sh.crud.member.model.entity.Pride;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

import static com.sh.crud.common.SqlSessionTemplate.getSqlSession;

public class MemberService {
    private MemberDao memberDao=new MemberDao();
    public Member findById(String id) {
        SqlSession session = getSqlSession();
        Member member = memberDao.findById(session, id);
        session.close();
        return member;
    }

    public List<Member> findAll() {
        SqlSession session = getSqlSession();
        List<Member> members=memberDao.findAll(session);
        session.close();
        return members;
    }

    public int registerMember(Member member) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = memberDao.registerMember(session, member);
            session.commit();
        } catch (Exception e){
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;

    }

    public int updateMember(Member member) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = memberDao.updateMember(session, member);
            session.commit();
        } catch(Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public int updateMemberPassword(Member member) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = memberDao.updateMemberPassword(session, member);
            session.commit();
        } catch (Exception e) {
            session.rollback();
            throw e;
        } finally {
            session.close();
        }
        return result;
    }

    public int deleteMember(String id) {
        int result = 0;
        SqlSession session = getSqlSession();
        try {
            result = memberDao.deleteMember(session, id);
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
