package com.sh.crud.room.model.dao;

import com.sh.crud.room.model.entity.Room;
import org.apache.ibatis.session.SqlSession;

public class RoomDao {
    public Room findByRoomNum(SqlSession session, String roomNum) {
        return session.selectOne("room.findByRoomNum", roomNum);
    }
}
