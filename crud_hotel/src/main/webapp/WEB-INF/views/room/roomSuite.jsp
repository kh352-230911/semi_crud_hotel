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
            <div><p class="text-2xl font-bold text-orange-300 dark:text-orange-300">스위트룸</p></div>
            <div>
                <button id="dropdownDefaultButton3"
                        data-dropdown-toggle="dropdown3"
                        class="text-black bg-orange-100 hover:bg-orange-200 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-yellow-200 dark:hover:bg-yellow-700 dark:focus:ring-orange-800"
                        type="button">
                        객실 예약 현황
                    <svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                         viewBox="0 0 10 6">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="m1 1 4 4 4-4"/>
                    </svg>
                </button>

                <!-- Dropdown menu -->
                <div id="dropdown3"
                     class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700">
                    <ul class="py-2 text-sm text-gray-700 dark:text-gray-700" aria-labelledby="dropdownDefaultButton">
                        <li>
                            <a href="#"
                               class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">Q601
                                <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                      data-roomnum="Q601">
                                    <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="Q601"></span>
                                    예약가능
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#"
                               class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">Q602
                                <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                      data-roomnum="Q602">
                                    <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="Q602"></span>
                                    예약가능
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#"
                               class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">Q603
                                <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                      data-roomnum="Q603">
                                    <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="Q603"></span>
                                    예약가능
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#"
                               class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">Q604
                                <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                      data-roomnum="Q604">
                                    <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="Q604"></span>
                                    예약가능
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#"
                               class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">Q605
                                <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                      data-roomnum="Q605">
                                    <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="Q605"></span>
                                    예약가능
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#"
                               class="block px-4 py-2 hover:bg-orange-100 dark:hover:bg-orange-100 dark:hover:text-black">Q606
                                <span class="roomStatus inline-flex items-center bg-green-900 text-green-300 text-xs font-medium px-2.5 py-0.5 rounded-full dark:bg-green-900 dark:text-green-300"
                                      data-roomnum="Q606">
                                    <span class="status-dot w-2 h-2 me-1 bg-green-500 rounded-full" data-roomnum="Q606"></span>
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
                            <img id="main-image" class="h-auto max-w-full rounded-lg"
                                 src="${pageContext.request.contextPath}/images/hotelRoom11_up_last.jpg"
                                 alt="Main Image">
                        </div>

                        <!-- 관련 내용이 표시될 영역 -->
                        <div class="flex-1 text-black p-4" id="imageInfo">
                            <p>● 스위트룸 객실입니다. 퀸베드가 기본옵션이며 조식, 수영장, 발렛주차 이용이 전부 가능합니다.</p>
                            <br><br>
                            <p>● 저희 호텔을 지속적으로 이용해주셔서 감사드리며 스위트룸 이용고객에게 더욱 더 최선을 다하겠습니다.</p>
                            <br><br>
                            <p>● 스위트룸 전담 직원이 24시간 대기중입니다. 궁금한점이 있으면 언제든지 문의바랍니다. 감사합니다.</p>
                        </div>
                    </div>


                    <!-- 썸네일 이미지 -->
                    <div class="grid grid-cols-5 gap-4 mt-4">
                        <!-- 썸네일 이미지들 -->
                        <%-- 썸네일 이미지들에 onclick 이벤트를 추가하여 updateMainImage 함수를 호출 --%>
                        <div>
                            <img class="h-auto max-w-full rounded-lg cursor-pointer"
                                 src="${pageContext.request.contextPath}/images/hotelRoom11_up_last.jpg" alt="Thumbnail"
                                 onclick="updateMainImage(this.src);">
                        </div>
                        <div>
                            <img class="h-auto max-w-full rounded-lg cursor-pointer"
                                 src="${pageContext.request.contextPath}/images/hotelRoom12_up_last.jpg" alt="Thumbnail"
                                 onclick="updateMainImage(this.src);">
                        </div>
                        <div>
                            <img class="h-auto max-w-full rounded-lg cursor-pointer"
                                 src="${pageContext.request.contextPath}/images/hotelRoom13_up_last.jpg" alt="Thumbnail"
                                 onclick="updateMainImage(this.src);">
                        </div>
                        <div>
                            <img class="h-auto max-w-full rounded-lg cursor-pointer"
                                 src="${pageContext.request.contextPath}/images/hotelRoom14_up_last.jpg" alt="Thumbnail"
                                 onclick="updateMainImage(this.src);">
                        </div>
                        <div>
                            <img class="h-auto max-w-full rounded-lg cursor-pointer"
                                 src="${pageContext.request.contextPath}/images/hotelRoom15_up_last.jpg" alt="Thumbnail"
                                 onclick="updateMainImage(this.src);">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/room/roomSuite.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>