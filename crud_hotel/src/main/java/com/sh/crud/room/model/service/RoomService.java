package com.sh.crud.room.model.service;

import com.sh.crud.booking.model.entity.Booking;
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

    public boolean isRoomNumberValid(String roomNum) {

            SqlSession session = getSqlSession();
            try {
                Room room = roomDao.isRoomNumberValid(session, roomNum);
                // booking 객체가 null이 아니면 방 번호는 유효합니다.
                return room != null;
            } finally {
                // SqlSession을 항상 닫아줍니다.
                session.close();
            }

    }
}
