<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<style>
    html, body {
        width: 100%;
        overflow-x: hidden; /* 수평 스크롤을 제거합니다. */
    }

    .top-banner-overlay.is-moved {
        transform: translateX(350px);
    }

    .top-banner {
        position: relative;
        width: 100%; /* vw 대신 %를 사용합니다. */
        height: 100vh;
    }

    .top-banner-overlay {
        position: absolute;
        top: 0;
        left: 0;
        z-index: 10; /* 이 값을 적절히 높게 설정 */
        display: flex;
        flex-direction: column;
        justify-content: center;
        width: 350px;
        padding: 20px;
        background: rgba(0, 0, 0, 0.6);
        height: 100%;
    }

    #gallery {
        position: absolute;
        top: 0;
        left: 0;
        z-index: 1; /* 낮은 z-index 값으로 설정 */
        width: 100%;
        height: 100%;
    }

    /*  예약폼 */
    div.elem-group {
        margin: 20px 0;
    }

    div.elem-group.inlined {
        width: 49%;
        display: inline-block;
        float: left;
        margin-left: 1%;
    }

    label {
        display: block;
        font-family: "Lato", sans-serif;
        padding-bottom: 10px;
        font-size: medium;
    }

    input {
        border: 2px solid #777;
        box-sizing: border-box;
        font-size: small;
    }

    div.elem-group.inlined input {
        width: 95%;
        display: inline-block;
    }

    hr {
        border: 1px dotted #ccc;
    }

    h1 {
        text-align: center;
    }

    button#search {
        height: 30px;
        width: 60px;
        /*background: orange;*/
        border: 2px solid white;
        color: white;
        font-size: small;
        font-family: 'Nanum Gothic';
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        border: 2px solid black;
    }
</style>

<%-- 예약폼 영역 --%>
<section class="top-banner">
    <div class="top-banner-overlay">
        <h1 class="text-white">예약하기</h1>
        <form name="bookingSerchFrm" class="form-proup" action="${pageContext.request.contextPath}/booking/bookingRoom" method="get">
            <div class="elem-group inlined">

                <label class="text-white" for="checkin-date">Check-in Date</label>
                <input type="date" id="checkin-date" name="checkin" placeholder="Select date" required>
            </div>
            <div class="elem-group inlined">
                <label class="text-white" for="checkout-date">Check-out Date</label>
                <input type="date" id="checkout-date" name="checkout" placeholder="Select date" required>
            </div>
            <hr>
            <div class="elem-group inlined">
                <label class="text-white" for="adult">Adults</label>
                <input type="number" id="adult" name="Adults" placeholder="2" min="1" max="4" required>
            </div>

            <div class="w-[126px] h-6  left-[488px] top-[240px] elem-group">
                <label class="text-white" for="dropdownRadioButton">Room-Type</label>
                <button id="dropdownRadioButton" data-dropdown-toggle="dropdownDefaultRadio" class="text-black bg-white hover:bg-white border border-gray-800 hover:bg-gray-900 focus:ring-4 focus:outline-none focus:ring-black-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center" type="button">
                    스탠다드
                    <svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" fill="none" viewBox="0 0 10 6">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                    </svg>
                </button>
                <!-- Dropdown menu -->
                <div id="dropdownDefaultRadio" class="z-10 hidden w-48 bg-white divide-y divide-gray-100 rounded-lg shadow">
                    <ul class="p-3 space-y-3 text-sm text-gray-700" aria-labelledby="dropdownRadioButton">
                        <li>
                            <div class="flex items-center">
                                <input onclick="updateButton(this);" id="default-radio-1" type="radio" value="스탠다드" name="default-radio" class="w-4 h-4 text-black-600 bg-gray-100 border-gray-300 focus:ring-black-500">
                                <label for="default-radio-1" class="ms-2 text-sm font-medium text-gray-900">스탠다드</label>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-center">
                                <input onclick="updateButton(this);" id="default-radio-2" type="radio" value="프리미어" name="default-radio" class="w-4 h-4 text-black-600 bg-gray-100 border-gray-300 focus:ring-black-500">
                                <label for="default-radio-2" class="ms-2 text-sm font-medium text-gray-900">프리미어</label>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-center">
                                <input onclick="updateButton(this);" id="default-radio-3" type="radio" value="스위트룸" name="default-radio" class="w-4 h-4 text-black-600 bg-gray-100 border-gray-300 focus:ring-black-500">
                                <label for="default-radio-3" class="ms-2 text-sm font-medium text-gray-900">스위트룸</label>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

        </form>

        <div class="elem-group inlined">
            <button id="search" onclick="document.bookingSerchFrm.submit()" class="text-white" type="submit">검색</button>

        </div>
    </div>

    <%-- 이미지 영역 --%>
    <div id="gallery" class="relative w-full h-full" data-carousel="slide">
        <!-- Carousel wrapper -->
        <div class="relative w-full h-full overflow-hidden">
            <!-- Item 1 -->
            <div class="hidden duration-700 ease-in-out" data-carousel-item>
                <img src="${pageContext.request.contextPath}/images/pool-1268868.jpg"
                     class="absolute inset-0 w-full h-full object-cover" alt="Main Image">
            </div>
            <!-- Item 2 -->
            <div class="hidden duration-700 ease-in-out" data-carousel-item="active">
                <img src="${pageContext.request.contextPath}/images/elba-3715707_1920.jpg"
                     class="absolute inset-0 w-full h-full object-cover" alt="">
            </div>
            <!-- Item 3 -->
            <div class="hidden duration-700 ease-in-out" data-carousel-item>
                <img src="${pageContext.request.contextPath}/images/gdgdd.jpg"
                     class="absolute inset-0 w-full h-full object-cover" alt="">
            </div>
            <!-- Item 4 -->
            <div class="hidden duration-700 ease-in-out" data-carousel-item>
                <img src="${pageContext.request.contextPath}/images/bar-4854100_1920.jpg"
                     class="absolute inset-0 w-full h-full object-cover" alt="">
            </div>
            <!-- Item 5 -->
            <div class="hidden duration-700 ease-in-out" data-carousel-item>
                <img src="${pageContext.request.contextPath}/images/hotel-00.jpg"
                     class="absolute inset-0 w-full h-full object-cover" alt="">
            </div>
        </div>
    </div>

    <!-- Slider controls -->
    <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
            <svg class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180" aria-hidden="true"
                 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M5 1 1 5l4 4"/>
            </svg>
            <span class="sr-only">Previous</span>
        </span>
    <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
            <svg class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180" aria-hidden="true"
                 xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="m1 9 4-4-4-4"/>
            </svg>
            <span class="sr-only">Next</span>
        </span>
</section>

<script src="${pageContext.request.contextPath}/js/index/index.js"></script>
<script src="${pageContext.request.contextPath}/js/booking/booking.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>