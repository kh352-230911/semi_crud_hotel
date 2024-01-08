<%--
  Created by IntelliJ IDEA.
  User: user1
  Date: 12/12/2023
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
    .room-card {
        display: flex;
        border: 1px solid #ccc;
        margin-bottom: 20px;
        border-radius: 5px;
        overflow: hidden;
    }

    .room-image {
        width: 30%;
        height: auto;
    }

    .room-details {
        width: 70%;
        padding: 15px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .room-info {
        margin-right: 20px;
    }

    .room-price {
        font-weight: bold;
        text-align: right;
    }

     .reserved {
         filter: grayscale(100%); /* 회색조로 만들기 */
         opacity: 0.5; /* 흐릿하게 만듭니다 */
         pointer-events: none; /* 클릭할 수 없게 만듭니다 */
     }
</style>

</style>

<div class="w-full h-screen flex justify-center items-start bg-white">
    <div class="w-[1280px] h-[720px] relative overflow-hidden bg-white">
        <p class="absolute left-[552px] top-[179px] text-base text-left text-[#715b3f]"></p>
        <svg
                width="86"
                height="2"
                viewBox="0 0 86 2"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                class="absolute left-[597.06px] top-[148.25px]"
                preserveAspectRatio="none"
        >
            <path d="M1.06396 1.25H84.7465" stroke="#D9D9D9" stroke-linecap="round"></path>
        </svg
        >
        <svg
                width="35"
                height="35"
                viewBox="0 0 35 35"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                class="absolute left-[564px] top-[132px]"
                preserveAspectRatio="xMidYMid meet"
        >
            <circle cx="17.5" cy="17.5" r="17" fill="white" stroke="#D9D9D9"></circle>
        </svg
        >
        <svg
                width="36"
                height="35"
                viewBox="0 0 36 35"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                class="absolute left-[621px] top-[132px]"
                preserveAspectRatio="xMidYMid meet"
        >
            <ellipse cx="18" cy="17.5" rx="18" ry="17.5" fill="#715B3F"></ellipse>
        </svg
        >
        <svg
                width="35"
                height="35"
                viewBox="0 0 35 35"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                class="absolute left-[679px] top-[132px]"
                preserveAspectRatio="xMidYMid meet"
        >
            <circle cx="17.5" cy="17.5" r="17" fill="white" stroke="#D9D9D9"></circle>
        </svg>
        <p class="absolute left-[576px] top-[132px] text-2xl text-left text-[#d9d9d9]">1</p>
        <p class="absolute left-[633px] top-[132px] text-2xl text-left text-white">2</p>
        <p class="absolute left-[689px] top-[132px] text-2xl text-left text-[#d9d9d9]">3</p>
        <svg
                width="924"
                height="2"
                viewBox="0 0 924 2"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                class="absolute left-[161.58px] top-[209px]"
                preserveAspectRatio="none"
        >
            <path d="M0.582031 1H922.888" stroke="#715B3F" stroke-linecap="round"></path>
        </svg
        >
        <svg
                width="924"
                height="600"
                viewBox="0 0 924 152"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                class="absolute left-[162px] top-[280px]"
                preserveAspectRatio="none"
        >
            <path d="M1 1H923.306M1 151H923.306" stroke="#D9D9D9" stroke-linecap="round"></path>
        </svg>
        <p class="absolute left-[567px] top-[180px] text-base text-left text-[#715b3f]">
            조건에 맞는 객실 선택
        </p>
        <p class="absolute left-[950px] top-[230px] text-[15px] text-left text-black">
            <button id="dropdownRadioButton1" data-dropdown-toggle="dropdownDefaultRadio1"
                    class="text-black bg-white hover:bg-orange-200 focus:ring-4 focus:outline-none focus:ring-orange-300 font-medium border border-gray-900 rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center"
                    type="button">
                즐길거리
                <svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                     viewBox="0 0 10 6">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="m1 1 4 4 4-4"/>
                </svg>
            </button>

            <!-- Dropdown menu -->
        <div id="dropdownDefaultRadio1"
             class="z-10 hidden w-48 bg-white divide-y divide-gray-100 rounded-lg shadow dark:bg-gray-700 dark:divide-gray-600">
            <ul class="p-3 space-y-3 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownRadioButton">
                <li>
                    <div class="flex items-center">
                        <input onclick="updateButton(this);" id="default-radio-1" type="radio" value="양재 동물원"
                               name="default-radio"
                               class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-orange-200 focus:ring-2">
                        <label for="default-radio-1" class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">양재
                            동물원</label>
                    </div>
                </li>
                <li>
                    <div class="flex items-center">
                        <input onclick="updateButton(this);" id="default-radio-2" type="radio" value="코엑스 아쿠아리움"
                               name="default-radio"
                               class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-orange-200 focus:ring-2">
                        <label for="default-radio-2" class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">코엑스
                            아쿠아리움</label>
                    </div>
                </li>
                <li>
                    <div class="flex items-center">
                        <input onclick="updateButton(this);" id="default-radio-3" type="radio" value="피규어 뮤지엄"
                               name="default-radio"
                               class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-orange-200 focus:ring-2">
                        <label for="default-radio-3" class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">피규어
                            뮤지엄</label>
                    </div>
                </li>
                <li>
                    <div class="flex items-center">
                        <input onclick="updateButton(this);" id="default-radio-4" type="radio" value="가로수길"
                               name="default-radio"
                               class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-orange-200 focus:ring-2">
                        <label for="default-radio-4" class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">가로수길</label>
                    </div>
                </li>
                <li>
                    <div class="flex items-center">
                        <input onclick="updateButton(this);" id="default-radio-5" type="radio" value="뮤지컬 나그네"
                               name="default-radio"
                               class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-orange-200 focus:ring-2">
                        <label for="default-radio-5" class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">뮤지컬
                            나그네</label>
                    </div>
                </li>
                <li>
                    <div class="flex items-center">
                        <input onclick="updateButton(this);" id="default-radio-6" type="radio" value="강남 롯데월드"
                               name="default-radio"
                               class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-orange-200 focus:ring-2">
                        <label for="default-radio-6" class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">강남
                            놋데월드</label>
                    </div>
                </li>
                <li>
                    <div class="flex items-center">
                        <input onclick="updateButton(this);" id="default-radio-7" type="radio" value="선택안함"
                               name="default-radio"
                               class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-orange-200 focus:ring-2">
                        <label for="default-radio-7" class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">선택안함</label>
                    </div>
                </li>
            </ul>
        </div>
        </p>

        <!-- 여러개 위한 스크롤 가능한 컨테이너 -->
        <div class="relative left-[162px] top-[280px] w-[924px] h-[440px] overflow-auto">
            <!-- Repeat this part for each room -->
            <div class="room-card" type="standard" data-room-id="A201">
                <img src="${pageContext.request.contextPath}/images/hotelRoom1_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">A201</h5>
                        <p>스탠다드 객실 [최대 2명]</p>
                        <p>single bed</p>
                        <p>조식 기본 제공</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>180,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                            예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="standard" data-room-id="A202">
                <img src="${pageContext.request.contextPath}/images/hotelRoom2_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">A202</h5>
                        <p>스탠다드 객실 [최대 2명]</p>
                        <p>single bed</p>
                        <p>수영장 이용 가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>200,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="standard" data-room-id="A203">
                <img src="${pageContext.request.contextPath}/images/hotelRoom3_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">A203</h5>
                        <p>스탠다드 객실 [최대 2명]</p>
                        <p>single bed</p>
                        <p>조식 기본 제공 / 수영장 이용 가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>230,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="standard" data-room-id="A204">
                <img src="${pageContext.request.contextPath}/images/hotelRoom4_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">A204</h5>
                        <p>스탠다드 객실 [최대 2명]</p>
                        <p>single bed</p>
                        <p>발렛 주차 기본 제공</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>170,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="standard" data-room-id="A205">
                <img src="${pageContext.request.contextPath}/images/hotelRoom5_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">A205</h5>
                        <p>스탠다드 객실 [최대 2명]</p>
                        <p>single bed</p>
                        <p> 수영장 이용가능 /발렛 주차 기본 제공</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>220,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="standard" data-room-id="A206">
                <img src="${pageContext.request.contextPath}/images/hotelRoom1_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">A206</h5>
                        <p>스탠다드 객실 [최대 2명]</p>
                        <p>single bed</p>
                        <p> 수영장 이용가능 / 조식 , 발렛 주차 기본 제공</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>250,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card"type="standard" data-room-id="T301">
                <img src="${pageContext.request.contextPath}/images/hotelRoom2_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">T301</h5>
                        <p>스탠다드 객실 [최대 4명]</p>
                        <p>twin bed</p>
                        <p>조식 기본 제공</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>230,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="standard" data-room-id="T302">
                <img src="${pageContext.request.contextPath}/images/hotelRoom2_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">T302</h5>
                        <p>스탠다드 객실 [최대 4명]</p>
                        <p>twin bed</p>
                        <p>수영장 이용 가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>250,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="standard" data-room-id="A303">
                <img src="${pageContext.request.contextPath}/images/hotelRoom3_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">A303</h5>
                        <p>스탠다드 객실 [최대 2명]</p>
                        <p>single bed</p>
                        <p>조식 기본 제공 / 발렛 주차 이용가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>200,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="standard" data-room-id="A304">
                <img src="${pageContext.request.contextPath}/images/hotelRoom4_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">A304</h5>
                        <p>스탠다드 객실 [최대 2명]</p>
                        <p>single bed</p>
                        <p>수영장 이용가능 / 발렛 주차 이용가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>220,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="standard" data-room-id="T305">
                <img src="${pageContext.request.contextPath}/images/hotelRoom5_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">T305</h5>
                        <p>스탠다드 객실 [최대 4명]</p>
                        <p>twin bed</p>
                        <p>발렛 주차 이용가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>230,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="standard" data-room-id="T306">
                <img src="${pageContext.request.contextPath}/images/hotelRoom1_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">T306</h5>
                        <p>스탠다드 객실 [최대 4명]</p>
                        <p>twin bed</p>
                        <p>조식 기본 제공 / 수영장, 발렛 주차 이용가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>300,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="T401">
                <img src="${pageContext.request.contextPath}/images/hotelRoom6_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">T401</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>twin bed</p>
                        <p>조식 기본 제공</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>380,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="A402">
                <img src="${pageContext.request.contextPath}/images/hotelRoom7_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">T402</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>twin bed</p>
                        <p>수영장 이용 가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>400,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="Q403">
                <img src="${pageContext.request.contextPath}/images/hotelRoom8_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q403</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>조식 기본 제공 / 수영장 이용 가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>480,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="Q404">
                <img src="${pageContext.request.contextPath}/images/hotelRoom9_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q404</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>발렛 주차 신청 가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>450,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="Q405">
                <img src="${pageContext.request.contextPath}/images/hotelRoom10_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q405</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>수영장 이용 가능 /발렛 주차 신청 가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>470,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="Q406">
                <img src="${pageContext.request.contextPath}/images/hotelRoom6_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q406</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>조식 기본 제공 /수영장,발렛 주차 이용 가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>500,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="T501">
                <img src="${pageContext.request.contextPath}/images/hotelRoom7_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">T501</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>twin bed</p>
                        <p>조식 기본 제공</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>380,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="T502">
                <img src="${pageContext.request.contextPath}/images/hotelRoom7_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">T502</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>twin bed</p>
                        <p>수영장 이용 가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>400,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="Q503">
                <img src="${pageContext.request.contextPath}/images/hotelRoom8_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q503</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>조식 기본 제공/수영장, 발렛주차 이용 가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>500,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="Q504">
                <img src="${pageContext.request.contextPath}/images/hotelRoom9_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q504</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>조식 기본 제공</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>430,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="Q505">
                <img src="${pageContext.request.contextPath}/images/hotelRoom10_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q505</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>수영장 이용 가능</p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>430,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="premier" data-room-id="Q506">
                <img src="${pageContext.request.contextPath}/images/hotelRoom7_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q506</h5>
                        <p>프리미어 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>조식 기본제공 / 수영장, 발렛 주차 이용가능 </p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>500,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="suite" data-room-id="Q601">
                <img src="${pageContext.request.contextPath}/images/hotelRoom11_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q601</h5>
                        <p>스위트룸 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>조식, 수영장, 발렛 주차 모두이용가능 </p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>600,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="suite" data-room-id="Q602">
                <img src="${pageContext.request.contextPath}/images/hotelRoom12_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q602</h5>
                        <p>스위트룸 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>조식, 수영장, 발렛 주차 모두이용가능 </p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>600,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="suite" data-room-id="Q603">
                <img src="${pageContext.request.contextPath}/images/hotelRoom13_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q603</h5>
                        <p>스위트룸 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>조식, 수영장, 발렛 주차 모두이용가능 </p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>600,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="suite" data-room-id="Q604">
                <img src="${pageContext.request.contextPath}/images/hotelRoom14_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q604</h5>
                        <p>스위트룸 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>조식, 수영장, 발렛 주차 모두이용가능 </p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>600,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="suite" data-room-id="Q605">
                <img src="${pageContext.request.contextPath}/images/hotelRoom15_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q605</h5>
                        <p>스위트룸 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>조식, 수영장, 발렛 주차 모두이용가능 </p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>600,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card" type="suite" data-room-id="Q606">
                <img src="${pageContext.request.contextPath}/images/hotelRoom11_up_last.jpg" alt="Room Image"
                     class="room-image">
                <div class="room-details">
                    <div class="room-info">
                        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Q606</h5>
                        <p>스위트룸 객실 [최대 4명]</p>
                        <p>Queen</p>
                        <p>조식, 수영장, 발렛 주차 모두이용가능 </p>
                        <!-- Add more room details as needed -->
                    </div>
                    <div class="room-price">
                        <span>600,000 원 ~</span>
                        <button type="button"
                                class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                            <a href="${pageContext.request.contextPath}/booking/bookingCheck">
                                예약하기</a>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- ... (다른 요소들) ... -->
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/booking/bookingRoom.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>