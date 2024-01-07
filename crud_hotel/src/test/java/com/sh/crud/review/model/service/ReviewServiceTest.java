package com.sh.crud.review.model.service;

import com.sh.crud.ask.model.entity.Ask;
import com.sh.crud.review.model.entity.Review;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

public class ReviewServiceTest {
    ReviewService reviewService;
    @BeforeEach
    public void beforeEach() {
        this.reviewService = new ReviewService();
    }
    @DisplayName("reviewService는 Null이 아니다.")
    @Test
    public void test1() {
        assertThat(reviewService).isNotNull();
    }

//    @DisplayName("리뷰 글 전체 조회")
//    @Test
//    public void test2() {
//        List<Review> reviews = reviewService.findAll();
//        assertThat(reviews).isNotEmpty();
//        reviews.forEach((review) -> {
//            System.out.println(review);
//            assertThat(review.getRevNum()).isNotZero();
//            assertThat(review.getRevId()).isNotNull();
//            assertThat(review.getRevRoomNum()).isNotNull();
//            assertThat(review.getRevTitle()).isNotNull();
//            assertThat(review.getRevContent()).isNotNull();
//            assertThat(review.getRevScore()).isNotZero();
//            assertThat(review.getRevDate()).isNotNull();
//        });
//    }

    @DisplayName("리뷰 글 Id 조회")
    @Test
    public void test3() {
        String id = "sinsa";
        Review review = reviewService.findById(id);
        System.out.println(review);
        assertThat(review).isNotNull();
        assertThat(review.getRevNum()).isNotZero();
        assertThat(review.getRevId()).isNotNull();
        assertThat(review.getRevRoomNum()).isNotNull();
        assertThat(review.getRevTitle()).isNotNull();
        assertThat(review.getRevContent()).isNotNull();
        assertThat(review.getRevScore()).isNotZero();
        assertThat(review.getRevDate()).isNotNull();
    }
}
