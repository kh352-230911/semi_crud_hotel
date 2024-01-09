package com.sh.crud.pride.model.service;

import com.sh.crud.member.model.entity.Member;
import com.sh.crud.member.model.entity.Pride;
import com.sh.crud.pride.model.dao.TbPrideDao;
import com.sh.crud.pride.model.entity.TbPride;
import org.apache.ibatis.session.SqlSession;

import static com.sh.crud.common.SqlSessionTemplate.getSqlSession;

public class TbPrideService {
    private TbPrideDao tbPrideDao= new TbPrideDao();
    public TbPride findByPride(Pride pride) {
        SqlSession session = getSqlSession();
        TbPride tbPride = tbPrideDao.findByPride(session, pride);
        session.close();
        return tbPride;
    }
}
