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
    #t{
        font-family: 'Diphylleia', serif;
        font-family: 'Grandiflora One', cursive;
        font-family: 'Nanum Myeongjo', serif;
    }
</style>

<div class="flex-1 lg:flex-none">
    <svg
            width="1600"
            height="2"
            viewBox="0 0 924 2"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            class="absolute left-[161.58px] top-[209px]"
            preserveAspectRatio="none"
    >
        <path d="M0.582031 1H922.888" stroke="#715B3F" stroke-linecap="round"></path>
    </svg>
    <!-- Left placeholder for mobile button or anything that should be on the left side -->
</div>
<div><p id="t" class="m-10 text-3xl font-bold text-center text-orange-300 dark:text-orange-300">주변 즐길거리</p></div>
<div id="default-carousel" class="relative w-full" data-carousel="slide">
    <!-- Carousel wrapper -->
    <div class="relative h-56 overflow-hidden rounded-lg md:h-96">
        <!-- Item 1 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/panda.jpg"
                 class="absolute block w-full h-full object-cover -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
        </div>
        <!-- Item 2 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/aqua.jpg"
                 class="absolute block w-full h-full object-cover -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
        </div>
        <!-- Item 3 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/figure2.jpg"
                 class="absolute block w-full h-full object-cover -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
        </div>
        <!-- Item 4 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/road2.jpg"
                 class="absolute block w-full h-full object-cover -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
        </div>
        <!-- Item 5 -->
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/musical.jpg"
                 class="absolute block w-full h-full object-cover -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
        </div>
        <div class="hidden duration-700 ease-in-out" data-carousel-item>
            <img src="${pageContext.request.contextPath}/images/world3.jpg"
                 class="absolute block w-full h-full object-cover -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2" alt="...">
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
    <div id="text-carousel" class="items-center justify-center px-6 md:px-60 bg-white relative w-full mt-4" data-carousel="text">
        <div class="relative">
            <div class="carousel-item active">
                    <div>
                        <h2 class="text-xl text-black mb-2">양재 동물원</h2>
                        <div class="relative max-w-sm">
                            <p class="w-full mt-6 border-l-4 border-dotted px-5">
                                양재 동물원은 관람객이 동물과 자연보전의 의미를 되새기는 계기와 몸과 마음의 여유를 제공함과 동시에 동물에게 더 생태적이고 쾌적한 환경을 제공함으로써,
                                <br>
                                동물들이 행복하고 행복한 동물을 보면서 관람객이 행복해지는 동물원!
                            </p>
                            <div class="absolute top-0 -ml-1.5 h-4 w-4 rounded-full bg-orange-800"></div>
                            <p class="text-orange-800 text-sm mt-2 pb-6" >자세한 정보나 요금을 보시려면 하단 사이트를 참고해주세요.</p>
                            <h2 class="text-xl font-semibold mb-2 mt-4">홈페이지</h2>
                            <a href="https://grandpark.seoul.go.kr/main/ko.do"
                               class="pb-1 text-orange-800 hover:underline">https://grandpark.seoul.go.kr/main/ko.do</a>
                            <hr>
                            <p class="text-gray-600 text-sm mt-2 pb-6">위치 : 서울특별시 서초구 양재천로21길 42</p>
                        </div>
                    </div>
            </div>
            <div class="carousel-item">
                    <div>
                        <h2 class="text-xl text-black mb-2">코엑스 아쿠아리움</h2>
                        <div class="relative max-w-sm">
                            <p class="w-full mt-6 border-l-4 border-dotted px-5">
                                서울 도심속 바다!
                                <br>
                                신비롭고 다양한 2만여 수중 생물들이 살고 있는 코엑스 아쿠아리움!
                                <br>
                                코엑스 아쿠아리움의 다양한 테마존을 통해 물의 여행을 함께해보세요!
                            </p>
                            <div class="absolute top-0 -ml-1.5 h-4 w-4 rounded-full bg-orange-800"></div>
                            <p class="text-orange-800 text-sm mt-2 pb-6" >자세한 정보나 요금을 보시려면 하단 사이트를 참고해주세요.</p>
                            <h2 class="text-xl font-semibold mb-2 mt-4">홈페이지</h2>
                            <a href="https://www.coexaqua.com/"
                               class="pb-1 text-orange-800 hover:underline">https://www.coexaqua.com/</a>
                            <hr>
                            <p class="text-gray-600 text-sm mt-2 pb-6">위치 : 서울특별시 강남구 영동대로 513</p>
                        </div>
                    </div>
            </div>
            <div class="carousel-item">
                    <div>
                        <h2 class="text-xl text-black mb-2">피규어 뮤지엄</h2>
                        <div class="relative max-w-sm">
                            <p class="w-full mt-6 border-l-4 border-dotted px-5">
                                Figure Museum는 피규어 및 토이를 테마로 테마파크의 기능을 접목시킨 새로운 개념의 뮤지엄입니다.
                                <br>
                                따라서 진귀한 피규어를 만나고, 감상하고, 체험하고, 즐길 수 있는 경험을 제공함으로써 어린이, 청소년, 성인 등 모든 이들에게 새로운 놀이문화와 건전한 취미생활을 제시하는 문화관광 랜드마크이다
                                <br>
                                관람시간 : 매일 오전 11시 ~ 오후 7시
                            </p>
                            <div class="absolute top-0 -ml-1.5 h-4 w-4 rounded-full bg-orange-800"></div>
                            <p class="text-orange-800 text-sm mt-2 pb-6" >자세한 정보나 요금을 보시려면 하단 사이트를 참고해주세요.</p>
                            <h2 class="text-xl font-semibold mb-2 mt-4">홈페이지</h2>
                            <a href="http://www.figuremuseumw.co.kr/"
                               class="pb-1 text-orange-800 hover:underline">http://www.figuremuseumw.co.kr/</a>
                            <hr>
                            <p class="text-gray-600 text-sm mt-2 pb-6">위치 : 청담동 84-9</p>
                        </div>
                    </div>
            </div>
            <div class="carousel-item">
                    <div>
                        <h2 class="text-xl text-black mb-2">가로수길</h2>
                        <div class="relative max-w-sm">
                            <p class="w-full mt-6 border-l-4 border-dotted px-5">
                                서울특별시 강남구 신사동에 위치한 길이자 번화가로, 주로 '신사동 가로수길'이라고 언급된다.
                                <br>
                                구간은 압구정로12길에서 도산대로13길까지 해당된다.
                                <br>
                                이름 그대로 길에 은행나무가 길게 늘어서 있는 것이 특징이며, 서울 지하철 3호선의 신사역 8번 출구에서 가깝다.
                                강남대로보단 규모가 작지만 더 다양한 점포들이 몰려 있고, 외산 자동차 매장들까지 여럿 존재한다.
                            </p>
                            <div class="absolute top-0 -ml-1.5 h-4 w-4 rounded-full bg-orange-800"></div>
                            <p class="text-orange-800 text-sm mt-2 pb-6" >자세한 정보나 요금을 보시려면 하단 사이트를 참고해주세요.</p>
                            <h2 class="text-xl font-semibold mb-2 mt-4">홈페이지</h2>
                            <a href="https://www.Garosu-gil.com/"
                               class="pb-1 text-orange-800 hover:underline">https://www.Garosu-gil.com/</a>
                            <hr>
                            <p class="text-gray-600 text-sm mt-2 pb-6">위치 : 서울 강남구 신사동</p>
                        </div>
                    </div>
            </div>
            <div class="carousel-item">
                    <div>
                        <h2 class="text-xl text-black mb-2">뮤지컬 겨울나그네</h2>
                        <div class="relative max-w-sm">
                            <p class="w-full mt-6 border-l-4 border-dotted px-5">
                                작품소개 : 잃어버린 순수와 아련한 첫사랑의기억, 겨울나그네가 故최인호 작가 10주기 기념으로 새롭게 재창작된 무대로 돌아오다!
                                첫사랑의 기억을 떠올리게 하는 청춘드라마!
                            </p>
                            <p class="text-gray-600 text-sm mt-2 pb-6">
                                기간 : 2023-12-15 ~ 2024-02-25
                                <br>
                                시간 : 평일(화~금) 19시 30분 / 주말 및 공휴일 14시, 18시 30분 (월요일 공연없음, 12/26(화) 공연없음) (단 , 12/16(토), 23(토) 3시, 7시 30분 공연)
                                <br>
                                소요시간 : 150분(인터미션 포함)
                            </p>
                            <div class="absolute top-0 -ml-1.5 h-4 w-4 rounded-full bg-orange-800"></div>
                            <p class="text-orange-800 text-sm mt-2 pb-6" >자세한 정보나 요금을 보시려면 하단 사이트를 참고해주세요.</p>
                            <h2 class="text-xl font-semibold mb-2 mt-4">홈페이지</h2>
                            <a href="https://home.kepco.co.kr/kepco/AR/main.do?menuCd=FN10"
                               class="pb-1 text-orange-800 hover:underline">https://home.kepco.co.kr/kepco/AR/main.do?menuCd=FN10</a>
                            <hr>
                            <p class="text-gray-600 text-sm mt-2 pb-6">위치 : 서초동 1355 한전아트센터</p>
                        </div>
                    </div>
            </div>
            <div class="carousel-item">
                    <div>
                        <h2 class="text-xl text-black mb-2">강남 놋데월드</h2>
                        <div class="relative max-w-sm">
                            <p class="w-full mt-6 border-l-4 border-dotted px-5">
                                국내 최초, 최대 실내테마파크
                                <br>
                                매일 짜릿한 스릴이 넘쳐나는
                                모험과 신비의 나라 놋데월드!
                                <br>
                                운영시간 : 10:00 ~ 22:00
                            </p>
                            <div class="absolute top-0 -ml-1.5 h-4 w-4 rounded-full bg-orange-800"></div>
                            <p class="text-orange-800 text-sm mt-2 pb-6" >자세한 정보나 요금을 보시려면 하단 사이트를 참고해주세요.</p>
                            <h2 class="text-xl font-semibold mb-2 mt-4">홈페이지</h2>
                            <a href="https://adventure.lotteworld.com/kor/main/index.do"
                               class="pb-1 text-orange-800 hover:underline">https://adventure.lotteworld.com/kor/main/index.do</a>
                            <hr>
                            <p class="text-gray-600 text-sm mt-2 pb-6">위치 : 서울 강남구 역삼동</p>
                        </div>
                    </div>
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

