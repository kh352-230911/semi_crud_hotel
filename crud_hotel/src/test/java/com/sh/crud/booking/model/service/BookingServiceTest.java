package com.sh.crud.booking.model.service;

import com.sh.crud.booking.model.entity.Booking;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

class BookingServiceTest {

    BookingService bookingService;

    @BeforeEach
    public void beforeEach() {
        this.bookingService = new BookingService();
    }

    @DisplayName("BookingService객체는 null이 아니다.")
    @Test
    public void test1() {
        assertThat(bookingService).isNotNull();
    }

    @DisplayName("회원의 존재하는 예약목록이 정상적으로 조회된다.")
    @Test
    public void test2() {
//        String bookingMemberId = "honggd";
//        Booking booking = bookingService.findByBookingMemberId(bookingMemberId);
//        System.out.println(booking);
////         객체
//        assertThat(booking).isNotNull();
////         필드
//        assertThat(booking.getBookingNum()).isNotNull();
//        assertThat(booking.getBookingMemberId()).isNotNull();
//        assertThat(booking.getBookingRoomNum()).isNotNull();
//        assertThat(booking.getBookingName()).isNotNull();
//        assertThat(booking.getCheckInDate()).isNotNull();
//        assertThat(booking.getCheckOutDate()).isNotNull();
    }
}