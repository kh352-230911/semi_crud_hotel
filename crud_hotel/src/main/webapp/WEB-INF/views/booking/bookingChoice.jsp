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
<div class="w-full h-screen flex justify-center items-start bg-white">
    <div class="w-[1280px] h-[720px] relative overflow-hidden bg-white">
        <p class="pb-2 absolute left-[570px] top-[180px] text-base text-left text-[#715b3f]">
            객실, 날짜, 인원 선택
        </p>
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
        </svg>
        <svg
                width="35"
                height="35"
                viewBox="0 0 35 35"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                class="absolute left-[564px] top-[132px]"
                preserveAspectRatio="xMidYMid meet"
        >
            <circle cx="17.5" cy="17.5" r="17.5" fill="#715B3F"></circle>
        </svg>
        <svg
                width="36"
                height="35"
                viewBox="0 0 36 35"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                class="absolute left-[621px] top-[132px]"
                preserveAspectRatio="xMidYMid meet"
        >
            <path
                    d="M35.5 17.5C35.5 26.8757 27.6784 34.5 18 34.5C8.32165 34.5 0.5 26.8757 0.5 17.5C0.5 8.12434 8.32165 0.5 18 0.5C27.6784 0.5 35.5 8.12434 35.5 17.5Z"
                    fill="white"
                    stroke="#D9D9D9"
            ></path>
        </svg>
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
        <p class="absolute left-[576px] top-[132px] text-2xl text-left text-white">1</p>
        <p class="absolute left-[633px] top-[132px] text-2xl text-left text-[#d9d9d9]">2</p>
        <p class="absolute left-[689px] top-[132px] text-2xl text-left text-[#d9d9d9]">3</p>
        <svg
                width="924"
                height="2"
                viewBox="0 0 924 2"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                class="mb-2 absolute left-[161.58px] top-[209px]"
                preserveAspectRatio="none"
        >
            <path d="M0.582031 1H922.888" stroke="#715B3F" stroke-linecap="round"></path>
        </svg>
        <p class="absolute left-[489px] top-[215px] text-[15px] text-left text-black">
            객실 유형을 선택해주세요
        </p>
        <p class="absolute left-[488px] top-72 text-[15px] text-left text-black">
            날짜를 선택해주세요
        </p>
        <p class="absolute left-[487px] top-[360px] text-[15px] text-left text-black">
            인원 수를 선택해주세요. [최대 4명]
        </p>
        <p class="absolute left-[489px] top-[435px] text-[15px] text-left text-black">
            객실마다 조식 / 수영장 / 발렛주차 옵션을 미리 확인하실 수 있습니다.
        </p>
        <form id="SelectBooking" action="${pageContext.request.contextPath}/booking/bookingRoom" method="get" name="bookingRoomFrm">
        <div class="w-[126px] h-6 absolute left-[488px] top-[240px] ">

                <button id="dropdownRadioButton" data-dropdown-toggle="dropdownDefaultRadio" class="text-black bg-white hover:bg-white border border-gray-800 hover:bg-gray-900 focus:ring-4 focus:outline-none focus:ring-black-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center" type="button">
                    선택

                    <svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" fill="none" viewBox="0 0 10 6">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                    </svg>
                </button>
                <!-- Dropdown menu -->
                <div id="dropdownDefaultRadio" class="z-10 hidden w-48 bg-white divide-y divide-gray-100 rounded-lg shadow">
                    <ul class="p-3 space-y-3 text-sm text-gray-700" aria-labelledby="dropdownRadioButton">
                        <li>
                            <div class="flex items-center">
                                <input onclick="updateButton(this);" id="standard" type="radio" value="스탠다드" name="roomType" class="w-4 h-4 text-black-600 bg-gray-100 border-gray-300 focus:ring-black-500">
                                <label for="standard" class="ms-2 text-sm font-medium text-gray-900">스탠다드</label>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-center">
                                <input onclick="updateButton(this);" id="premier" type="radio" value="프리미어" name="roomType" class="w-4 h-4 text-black-600 bg-gray-100 border-gray-300 focus:ring-black-500">
                                <label for="premier" class="ms-2 text-sm font-medium text-gray-900">프리미어</label>
                            </div>
                        </li>
                        <li>
                            <div class="flex items-center">
                                <input onclick="updateButton(this);" id="suite" type="radio" value="스위트" name="roomType" class="w-4 h-4 text-black-600 bg-gray-100 border-gray-300 focus:ring-black-500">
                                <label for="suite" class="ms-2 text-sm font-medium text-gray-900">스위트</label>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="w-[126px] h-6 absolute left-[487px] top-[310px]  ">
                <!-- 날짜 검색 체크인 -->
                <input type="date" id="checkInDate" name="checkInDate" placeholder="Select date" required>

            </div>
            <div class="w-[126px] h-6 absolute left-[666px] top-[310px] ">
                <!-- 날짜 검색 체크아웃-->
                <input type="date" id="checkOutDate" name="checkOutDate" placeholder="Select date" required>
            </div>
            <div class="w-[30px] h-6 absolute left-[488px] top-[385px] ">
                <input type="number" id="roomPeople" name="roomPeople" placeholder="선택" min="1" max="4" required>
            </div>

        </form>
        <div class="w-[150px] h-6 absolute left-[488px] top-[460px]  ">
            <button type="button" data-modal-target="crypto-modal" data-modal-toggle="crypto-modal" class="text-gray-900 bg-white hover:bg-gray-100 border border-gray-800 focus:ring-4 focus:outline-none focus:ring-gray-100 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:focus:ring-gray-600 dark:bg-gray-800 dark:border-gray-700 dark:text-white dark:hover:bg-gray-700">
                <svg aria-hidden="true" class="w-4 h-4 me-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.828 10.172a4 4 0 00-5.656 0l-4 4a4 4 0 105.656 5.656l1.102-1.101m-.758-4.899a4 4 0 005.656 0l4-4a4 4 0 00-5.656-5.656l-1.1 1.1"></path></svg>
                스탠다드
            </button>

            <!-- Main modal -->
            <div id="crypto-modal" tabindex="-1" aria-hidden="true" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative p-4 w-full max-w-md max-h-full">
                    <!-- Modal content -->l
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <!-- Modal header -->
                        <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                            <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                                스탠다드
                            </h3>
                            <button type="button" class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm h-8 w-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-toggle="crypto-modal">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <div class="p-4 md:p-5">
                            <p class="text-sm font-normal text-gray-500 dark:text-gray-400">
                                CRUD Hotel의 스탠다드 객실 목록입니다. <br>
                                객실당 조식/수영장/발렛주차 이용가능여부를 <br> 확인하실 수 있습니다.</p>
                            <ul class="my-4 space-y-3">
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">A201</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">A202</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        수영장</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">A203</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">A204</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">A205</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        수영장/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">A206</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">T301</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">T302</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        수영장</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">A303</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">A304</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        수영장/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">T305</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">T306</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장/발렛주차</span>
                                    </a>
                                </li>
                            </ul>
                            <div>
                                <a href="#" class="inline-flex items-center text-xs font-normal text-gray-500 hover:underline dark:text-gray-400">
                                    <svg class="w-3 h-3 me-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7.529 7.988a2.502 2.502 0 0 1 5 .191A2.441 2.441 0 0 1 10 10.582V12m-.01 3.008H10M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"/>
                                    </svg>
                                    객실 선택 주의 사항</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="w-[150px] h-6 absolute left-[488px] top-[510px]  ">
            <button type="button" data-modal-target="crypto-modal1" data-modal-toggle="crypto-modal1" class="text-gray-900 bg-white hover:bg-gray-100 border border-gray-800 focus:ring-4 focus:outline-none focus:ring-gray-100 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:focus:ring-gray-600 dark:bg-gray-800 dark:border-gray-700 dark:text-white dark:hover:bg-gray-700">
                <svg aria-hidden="true" class="w-4 h-4 me-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.828 10.172a4 4 0 00-5.656 0l-4 4a4 4 0 105.656 5.656l1.102-1.101m-.758-4.899a4 4 0 005.656 0l4-4a4 4 0 00-5.656-5.656l-1.1 1.1"></path></svg>
                프리미어
            </button>

            <!-- Main modal -->
            <div id="crypto-modal1" tabindex="-1" aria-hidden="true" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative p-4 w-full max-w-md max-h-full">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <!-- Modal header -->
                        <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                            <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                                프리미어
                            </h3>
                            <button type="button" class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm h-8 w-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-toggle="crypto-modal1">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <div class="p-4 md:p-5">
                            <p class="text-sm font-normal text-gray-500 dark:text-gray-400">
                                CRUD Hotel의 프리미어 객실 목록입니다. <br>
                                객실당 조식/수영장/발렛주차 이용가능여부를 <br> 확인하실 수 있습니다.</p>
                            <ul class="my-4 space-y-3">
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">T401</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">T402</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        수영장</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q403</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q404</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q405</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        수영장/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q406</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">T501</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">T502</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        수영장</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q503</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q504</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q505</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        수영장</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q506</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장/발렛주차</span>
                                    </a>
                                </li>
                            </ul>
                            <div>
                                <a href="#" class="inline-flex items-center text-xs font-normal text-gray-500 hover:underline dark:text-gray-400">
                                    <svg class="w-3 h-3 me-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7.529 7.988a2.502 2.502 0 0 1 5 .191A2.441 2.441 0 0 1 10 10.582V12m-.01 3.008H10M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"/>
                                    </svg>
                                    객실 선택 주의 사항</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="w-[150px] h-6 absolute left-[630px] top-[460px]  ">
            <button type="button" data-modal-target="crypto-modal2" data-modal-toggle="crypto-modal2" class="text-gray-900 bg-white hover:bg-gray-100 border border-gray-800 focus:ring-4 focus:outline-none focus:ring-gray-100 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:focus:ring-gray-600 dark:bg-gray-800 dark:border-gray-700 dark:text-white dark:hover:bg-gray-700">
                <svg aria-hidden="true" class="w-4 h-4 me-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.828 10.172a4 4 0 00-5.656 0l-4 4a4 4 0 105.656 5.656l1.102-1.101m-.758-4.899a4 4 0 005.656 0l4-4a4 4 0 00-5.656-5.656l-1.1 1.1"></path></svg>
                스위트룸
            </button>

            <!-- Main modal -->
            <div id="crypto-modal2" tabindex="-1" aria-hidden="true" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative p-4 w-full max-w-md max-h-full">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                        <!-- Modal header -->
                        <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                            <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                                스위트룸
                            </h3>
                            <button type="button" class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm h-8 w-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-toggle="crypto-modal2">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <div class="p-4 md:p-5">
                            <p class="text-sm font-normal text-gray-500 dark:text-gray-400">
                                CRUD Hotel의 스위트룸 객실 목록입니다. <br>
                                스위트룸은 조식/수영장/발렛주차 <br> 전부 이용가능합니다.</p>
                            <ul class="my-4 space-y-3">
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q601</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q602</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q603</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q604</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q605</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장/발렛주차</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="room flex items-center p-3 text-base font-bold text-gray-900 rounded-lg bg-gray-50 hover:bg-gray-100 group hover:shadow dark:bg-gray-600 dark:hover:bg-gray-500 dark:text-white">
                                        <span class="flex-1 ms-3 whitespace-nowrap">Q606</span>
                                        <span class="inline-flex items-center justify-center px-2 py-0.5 ms-3 text-xs font-medium text-gray-500 bg-gray-200 rounded dark:bg-gray-700 dark:text-gray-400">
                                        조식/수영장/발렛주차</span>
                                    </a>
                                </li>
                            </ul>
                            <div>
                                <a href="#" class="inline-flex items-center text-xs font-normal text-gray-500 hover:underline dark:text-gray-400">
                                    <svg class="w-3 h-3 me-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7.529 7.988a2.502 2.502 0 0 1 5 .191A2.441 2.441 0 0 1 10 10.582V12m-.01 3.008H10M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"/>
                                    </svg>
                                    객실 선택 주의 사항</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>>
        <div class="w-[304px] h-11 absolute left-[488px] top-[562px] bg-[#715b3f]"></div>

        <p class="roomSearch absolute left-[590px] top-[568px] text-2xl text-left text-white">
            <button form="SelectBooking" type="submit" onclick="document.bookingRoomFrm.submit()">
            <a>객실검색</a>
            </button>
        </p>
    </div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>