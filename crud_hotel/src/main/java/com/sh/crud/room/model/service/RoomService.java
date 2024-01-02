package com.sh.crud.room.model.service;

import com.sh.crud.room.model.dao.RoomDao;
import com.sh.crud.room.model.entity.Room;
import org.apache.ibatis.session.SqlSession;

import static com.sh.crud.common.SqlSessionTemplate.getSqlSession;

public class RoomService {

    private RoomDao roomDao = new RoomDao();

    public Room findByRoomNum(String roomNum) {
        SqlSession session = getSqlSession();
        Room room = roomDao.findByRoomNum(session, roomNum);
        session.close();
        return room;
    }
}
