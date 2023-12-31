package com.sh.crud.member.model.dao;

import com.sh.crud.member.model.entity.Member;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class MemberDao {
    public Member findById(SqlSession session, String id) {
        return session.selectOne("member.findById", id);
    }

    public List<Member> findAll(SqlSession session) {
        return session.selectList("member.findAll");
    }

    public int registerMember(SqlSession session, Member member) {
        return session.insert("member.registerMember",member);
    }

    public int updateMember(SqlSession session, Member member) {
        return session.update("member.updateMember", member);
    }

    public int updateMemberPassword(SqlSession session, Member member) {
        return session.update("member.updateMemberPassword", member);
    }

    public int deleteMember(SqlSession session, String id) {
        return session.delete("member.deleteMember", id);
    }
}
