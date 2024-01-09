
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

        <!-- 여러개 위한 스크롤 가능한 컨테이너 -->
        <div class="relative left-[162px] top-[280px] w-[924px] h-[440px] overflow-auto">
            <!-- Repeat this part for each room -->
            <%--            <c:if test="${booking.roomType--%>
            <%--                 &&  >= param.roomPeople--%>
            <%--                 && room.availability overlaps with param.checkInDate and param.checkOutDate}">--%>
            <%--            <c:if test="${rooms.roomType == '스탠다드' && rooms.roomNum == 'A201' }">--%>
            <div class="room-card ${filtered.contains('A201') ? '' : 'hidden'}" type="standard" data-room-id="A201">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="A201">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <%--            </c:if>--%>
            <%--            </c:if>--%>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('A202') ? '' : 'hidden'}" type="standard" data-room-id="A202">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="A202">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('A203') ? '' : 'hidden'}" type="standard" data-room-id="A203">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="A203">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('A204') ? '' : 'hidden'}" type="standard" data-room-id="A204">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="A204">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('A205') ? '' : 'hidden'}" type="standard" data-room-id="A205">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="A205">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('A206') ? '' : 'hidden'}" type="standard" data-room-id="A206">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="A206">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('T301') ? '' : 'hidden'}"type="standard" data-room-id="T301">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="T301">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('T302') ? '' : 'hidden'}" type="standard" data-room-id="T302">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="T302">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('A303') ? '' : 'hidden'}" type="standard" data-room-id="A303">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="A303">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('A304') ? '' : 'hidden'}" type="standard" data-room-id="A304">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="A304">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('T305') ? '' : 'hidden'}" type="standard" data-room-id="T305">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="T305">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('T306') ? '' : 'hidden'}" type="standard" data-room-id="T306">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="T306">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('T401') ? '' : 'hidden'}" type="premier" data-room-id="T401">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="T401">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('T402') ? '' : 'hidden'}" type="premier" data-room-id="A402">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="T402">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q403') ? '' : 'hidden'}" type="premier" data-room-id="Q403">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q403">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q404') ? '' : 'hidden'}" type="premier" data-room-id="Q404">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q404">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q405') ? '' : 'hidden'}" type="premier" data-room-id="Q405">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q405">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q406') ? '' : 'hidden'}" type="premier" data-room-id="Q406">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q406">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('T501') ? '' : 'hidden'}" type="premier" data-room-id="T501">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="T501">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('T502') ? '' : 'hidden'}" type="premier" data-room-id="T502">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="T502">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q503') ? '' : 'hidden'}" type="premier" data-room-id="Q503">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q503">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q504') ? '' : 'hidden'}" type="premier" data-room-id="Q504">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q504">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q505') ? '' : 'hidden'}" type="premier" data-room-id="Q505">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q505">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q506') ? '' : 'hidden'}" type="premier" data-room-id="Q506">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q506">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q601') ? '' : 'hidden'}" type="suite" data-room-id="Q601">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q601">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q602') ? '' : 'hidden'}" type="suite" data-room-id="Q602">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q602">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q603') ? '' : 'hidden'}" type="suite" data-room-id="Q603">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q603">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q604') ? '' : 'hidden'}" type="suite" data-room-id="Q604">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q604">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q605') ? '' : 'hidden'}" type="suite" data-room-id="Q605">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q605">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ... other rooms ... -->
            <div class="room-card ${filtered.contains('Q606') ? '' : 'hidden'}" type="suite" data-room-id="Q606">
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
                        <form action="${pageContext.request.contextPath}/booking/bookingCheck" method="get">
                            <input type="hidden" name="roomId" value="Q606">
                            <button type="submit" class="text-white bg-amber-900 border border-gray-300 focus:outline-none hover:bg-orange-200 focus:ring-4 focus:ring-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2">
                                예약하기
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- ... (다른 요소들) ... -->
    </div>
</div>


<%--<script src="${pageContext.request.contextPath}/js/booking/bookingRoom.js"></script>--%>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>