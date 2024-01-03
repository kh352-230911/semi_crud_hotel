<%--
  Created by IntelliJ IDEA.
  User: user1
  Date: 2024-01-02
  Time: 오후 7:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
    h2 {
        font-size: 2em; /* 글자 크기 */
        color: black; /* 글자 색상 */
        font-weight: bold; /* 글자 굵기 */
        /* 필요한 추가 스타일링 */
    }
    .carousel-item {
        display: none; /* 기본적으로 모든 항목을 숨깁니다. */
    }

    .carousel-item.active {
        display: block; /* 활성 항목만 보입니다. */
    }

    #default-carousel {
        margin: 0 auto; /* 중앙 정렬 */
        max-width: 45%; /* 최대 너비를 90%로 설정 (양쪽에 5%씩 마진) */
    }
    

</style>
<div id="default-carousel" class="relative w-full" data-carousel="slide">
    <!-- Carousel wrapper -->
    <div class="relative h-56 overflow-hidden rounded-lg md:h-96">
        <!-- Item 1 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/panda.jpg"
                 class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
        </div>
        <!-- Item 2 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/aqua.jpg"
                 class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
        </div>
        <!-- Item 3 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/figure2.jpg"
                 class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
        </div>
        <!-- Item 4 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/road2.jpg"
                 class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
        </div>
        <!-- Item 5 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/musical.jpg"
                 class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
        </div>
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/world3.jpg"
                 class="absolute block w-full -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
        </div>
        <button type="button"
                class="absolute top-0 start-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none"
                data-carousel-prev>
        <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
            <svg class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180" aria-hidden="true"
                 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M5 1 1 5l4 4"/>
            </svg>
            <span class="sr-only">Previous</span>
        </span>
        </button>
        <button type="button"
                class="absolute top-0 end-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none"
                data-carousel-next>
        <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
            <svg class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180" aria-hidden="true"
                 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="m1 9 4-4-4-4"/>
            </svg>
            <span class="sr-only">Next</span>
        </span>
        </button>
    </div>
    <!-- Slider indicators -->


    <div id="text-carousel" class="relative w-full mt-4" data-carousel="text">
        <div class="relative">
            <div class="carousel-item active">
                <h2>동물원</h2>
                <p>Description for Slide 1</p>
            </div>
            <div class="carousel-item">
                <h2>아쿠아리움</h2>
                <p>Description for Slide 2</p>
            </div>
            <div class="carousel-item">
                <h2>피규어 뮤지엄</h2>
                <p>Description for Slide 2</p>
            </div>
            <div class="carousel-item">
                <h2>가로수길</h2>
                <p>Description for Slide 2</p>
            </div>
            <div class="carousel-item">
                <h2>뮤지컬 겨울나그네</h2>
                <p>Description for Slide 2</p>
            </div>
            <div class="carousel-item">
                <h2>강남 롯데월드</h2>
                <p>Description for Slide 2</p>
            </div>
        </div>
    </div>
</div>


<script>
    document.addEventListener("DOMContentLoaded", function() {
        var currentIndex = 0; // 현재 슬라이더 인덱스
        var slideCount = document.querySelectorAll('#default-carousel .carousel-item').length;
        var autoSlideInterval;

        function syncSliders(index) {
            document.querySelectorAll('#default-carousel .carousel-item').forEach((item, idx) => {
                item.classList.toggle('active', idx == index);
            });

            document.querySelectorAll('#text-carousel .carousel-item').forEach((item, idx) => {
                item.classList.toggle('active', idx == index);
            });

            // 현재 인덱스 업데이트
            currentIndex = index;
        }

        function setupAutoSlide() {
            if (autoSlideInterval) clearInterval(autoSlideInterval);
            autoSlideInterval = setInterval(function() {
                var nextIndex = (currentIndex + 1) % slideCount;
                syncSliders(nextIndex);
            }, 3000); // 3초 간격으로 자동 전환
        }

        document.querySelector('[data-carousel-prev]').addEventListener('click', function() {
            var prevIndex = (currentIndex - 1 + slideCount) % slideCount;
            syncSliders(prevIndex);
            setupAutoSlide(); // 수동 전환 후 자동 슬라이딩 재설정
        });

        document.querySelector('[data-carousel-next]').addEventListener('click', function() {
            var nextIndex = (currentIndex + 1) % slideCount;
            syncSliders(nextIndex);
            setupAutoSlide(); // 수동 전환 후 자동 슬라이딩 재설정
        });

        setupAutoSlide(); // 초기 자동 슬라이딩 설정
    });
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

