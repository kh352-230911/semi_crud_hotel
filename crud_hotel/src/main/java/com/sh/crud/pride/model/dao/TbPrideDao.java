package com.sh.crud.pride.model.dao;

import com.sh.crud.member.model.entity.Pride;
import com.sh.crud.pride.model.entity.TbPride;
import org.apache.ibatis.session.SqlSession;

public class TbPrideDao {
    public TbPride findByPride(SqlSession session, Pride pride) {
        return session.selectOne("tbPride.findByPride", pride);
    }
}
