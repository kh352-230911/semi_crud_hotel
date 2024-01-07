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
    p,a{
        font-family: 'Diphylleia', serif;
        font-family: 'Grandiflora One', cursive;
        font-family: 'Nanum Myeongjo', serif;
    }
</style>
    <!-- 전체 컨테이너 -->
    <div class="flex h-screen">
        <!-- 사이드바 -->
        <div class="w-64 bg-yellow-50 p-5 space-y-4">
            <div><p class="text-2xl font-bold text-orange-300 dark:text-orange-300">객실 유형</p></div>
            <div><a href="${pageContext.request.contextPath}/room/roomStandard">스탠다드</a></div>
            <div><a href="${pageContext.request.contextPath}/room/roomPremier">프리미어</a></div>
            <div><a href="${pageContext.request.contextPath}/room/roomSuite">스위트룸</a></div>
        </div>

        <!-- 메인 컨텐츠 -->
        <div class="flex-1 flex flex-col">

            <!-- 상단 메뉴 -->
            <div class="flex justify-between items-center p-10">
                <div><p class="text-2xl font-bold text-orange-300 dark:text-orange-300">스탠다드</p></div>
                <div>
                    <button id="dropdownDefaultButton1"
                            data-dropdown-toggle="dropdown1"
                            class="text-black bg-orange-100 hover:bg-orange-200 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-yellow-200 dark:hover:bg-yellow-700 dark:focus:ring-orange-800" type="button">
                                객실 예약 현황
                        <svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">

                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                    </svg>
                    </button>

                    <!-- Dropdown menu -->
                    <div id="dropdown1" class="room z-10 hidden bg-white divide-y divide-orange-700 rounded-lg shadow w-44 dark:bg-orange-700">
                        <ul class="py-2 text-sm text-gray-700 dark:text-gray-700" aria-labelledby="dropdownDefaultButton">

                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">A201
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="A201">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="A201"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">A202
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="A202">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="A202"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">A203
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="A203">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="A203"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">A204
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="A204">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="A204"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">A205
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="A205">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="A205"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">A206
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="A206">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="A206"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">T301
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="T301">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="T301"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">T302
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="T302">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="T302"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">A303
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="A303">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="A303"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">A304
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="A304">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="A304"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">T305
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="T305">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="A305"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">T306
                                    <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                          data-roomnum="T306">
                                        <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="A306"></span>
                                        예약가능
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 객실 사진 섹션 -->
            <div class="flex-grow p-5 overflow-auto">
                <div class="bg-orange-100 p-3">
                    <h2 class="text-2xl mb-4"></h2>
                    <!-- 객실 사진 컨텐츠 -->
                    <div class="grid gap-4">
                        <div class="flex">
                            <div class="flex-1">
                                <img id="main-image" class="h-auto max-w-full rounded-lg" src="${pageContext.request.contextPath}/images/hotelRoom1_up_last.jpg" alt="Main Image">
                            </div>

                            <!-- 관련 내용이 표시될 영역 -->
                            <div class="flex-1 text-black p-4" id="imageInfo">
                                <p>● 스탠다드 객실입니다. 침대 종류로 싱글베드와 트윈베드가 있습니다.</p>
                                <br><br>
                                <p>● 각 방 마다 선택할 수 있는 옵션은 다르며, 예약하기에서 상세 확인이 가능합니다.</p>
                                <br><br>
                                <p>● 관련 선택 옵션 : 조식여부 / 수영장 이용가능여부 / 발렛주차 신청 여부</p>
                                <br><br>
                                <p>● 저희 호텔 처음 방문하신분들이 많이 이용하시며, CRUD Hotel은 고객님들께 최선을 다하겠습니다. </p>
                            </div>
                        </div>


                        <!-- 썸네일 이미지 -->
                        <div class="grid grid-cols-5 gap-4 mt-4">
                            <!-- 썸네일 이미지들 -->
                            <%-- 썸네일 이미지들에 onclick 이벤트를 추가하여 updateMainImage 함수를 호출 --%>
                            <div>
                                <img class="h-auto max-w-full rounded-lg cursor-pointer"
                                     src="${pageContext.request.contextPath}/images/hotelRoom1_up_last.jpg" alt="Thumbnail"
                                     onclick="updateMainImage(this.src);">
                            </div>
                            <div>
                                <img class="h-auto max-w-full rounded-lg cursor-pointer"
                                     src="${pageContext.request.contextPath}/images/hotelRoom2_up_last.jpg" alt="Thumbnail"
                                     onclick="updateMainImage(this.src);">
                            </div>
                            <div>
                                <img class="h-auto max-w-full rounded-lg cursor-pointer"
                                     src="${pageContext.request.contextPath}/images/hotelRoom3_up_last.jpg" alt="Thumbnail"
                                     onclick="updateMainImage(this.src);">
                            </div>
                            <div>
                                <img class="h-auto max-w-full rounded-lg cursor-pointer"
                                     src="${pageContext.request.contextPath}/images/hotelRoom4_up_last.jpg" alt="Thumbnail"
                                     onclick="updateMainImage(this.src);">
                            </div>
                            <div>
                                <img class="h-auto max-w-full rounded-lg cursor-pointer"
                                     src="${pageContext.request.contextPath}/images/hotelRoom5_up_last.jpg" alt="Thumbnail"
                                     onclick="updateMainImage(this.src);">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script src="${pageContext.request.contextPath}/js/room/roomStandard.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>