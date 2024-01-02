package com.sh.crud.room.model.service;

import com.sh.crud.room.model.entity.Room;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

class RoomServiceTest {

    RoomService roomService;

    @BeforeEach
    public void beforeEach() {
        this.roomService = new RoomService();
    }

    @DisplayName("RoomService객체는 Null이 아니다.")
    @Test
    public void test1() {
        assertThat(roomService).isNotNull();
    }

    @DisplayName("존재하는 객실이 정상적으로 조회된다.")
    @Test
    public void test2() {
        String roomNum = "T302";
        Room room = roomService.findByRoomNum(roomNum);
        System.out.println(room);
        // 객체
//        assertThat(room).isNotNull();
        // 필드
        assertThat(room.getRoomNum()).isNotNull();
        assertThat(room.getRoomType()).isNotNull();
        assertThat(room.getRoomBedType()).isNotNull();
        assertThat(room.getRoomPeople()).isNotNull();
        assertThat(room.getRoomPrice()).isNotNull();
        assertThat(room.getRoomBrunch()).isNotNull();
        assertThat(room.getRoomPool()).isNotNull();
        assertThat(room.getRoomParking()).isNotNull();
        assertThat(room.getRoomManagerNum()).isNotNull();
    }

}