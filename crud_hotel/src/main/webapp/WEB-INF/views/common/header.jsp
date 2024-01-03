<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>CRUD Hotel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<!-- component -->
<header>
    <nav class="bg-orange-50 border-gray-200 px-4 lg:px-6 py-2.5 ">
        <div class="flex justify-between items-center mx-auto max-w-screen-xl">
            <div class="flex-1 lg:flex-none">
                <!-- Left placeholder for mobile button or anything that should be on the left side -->
            </div>

            <!-- CRUD Hotel centered on all screen sizes -->
            <div class="flex-1 text-center">
                <span class="items-center justify-center self-center text-xl font-semibold whitespace-nowrap">
                    <a href="${pageContext.request.contextPath}">CRUD Hotel</a>
                </span>
            </div>

            <!-- Right Side Items -->
            <div class="flex-1 flex justify-evenly lg:flex-none">
                <c:if test="${loginMember == null}">
                    <a href="${pageContext.request.contextPath}/member/memberLogin" class="text-gray-800 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-4 lg:px-5 py-2 lg:py-2.5 mr-2 focus:outline-none">Log in</a>
                    <a href="#" class="text-gray-800 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-4 lg:px-5 py-2 lg:py-2.5 mr-2 focus:outline-none">Register</a>
                </c:if>
                <c:if test="${loginMember != null}">
                    <a href="${pageContext.request.contextPath}/member/memberDetail" class="text-md text-gray-600 hover:underline">
                        <svg class="w-6 h-6 text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 18">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm-2 3h4a4 4 0 0 1 4 4v2H1v-2a4 4 0 0 1 4-4Z"/>${loginMember.memberId}
                        </svg>
                    </a>${loginMember.memberId}님, 안녕하세요🧡
                    <a href="${pageContext.request.contextPath}/member/memberLogout" class="text-md text-gray-500 hover:underline">Log out</a>
                </c:if>
                <!-- Mobile menu button -->
                <button data-collapse-toggle="mobile-menu-2" type="button" class="inline-flex items-center p-2 ml-1 text-sm text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200" aria-controls="mobile-menu-2" aria-expanded="false">
                    <!-- Icon placeholders -->
                </button>

                    <!-- Dropdown menu -->
                    <button id="dropdownAvatarNameButton" data-dropdown-toggle="dropdownAvatarName" class="flex items-center text-sm pe-1 font-medium text-gray-900 rounded-full hover:text-blue-600 dark:hover:text-blue-500 md:me-0 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:text-white" type="button">
                        <span class="sr-only">Open user menu</span>
                        <img class="w-8 h-8 me-2 rounded-full" src="/images/1.jpg" alt="user photo">
                            ${loginMember.memberId}
                        <svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                        </svg>
                    </button>

                    <div id="dropdownAvatarName" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700 dark:divide-gray-600">
                        <div class="px-4 py-3 text-sm text-gray-900 dark:text-white">
                            <div class="font-medium ">${loginMember.memberId}</div>
                            <div class="truncate">🔸${loginMember.memberName}님🔸</div>
                        </div>
                        <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownInformdropdownAvatarNameButtonationButton">
                            <li>
                                <a href="${pageContext.request.contextPath}/member/memberDetail" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">내정보수정</a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">예약조회</a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">문의내역보기</a>
                            </li>
                        </ul>
                        <div class="py-2">
                            <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">회원탈퇴</a>
                        </div>
                    </div>
                    <a href="${pageContext.request.contextPath}/member/memberLogout" class="text-md text-gray-500 hover:underline">Log out</a>
                </c:if>
            </div>
        </div>
    </nav>


    <%-- 목록 --%>
    <nav class="flex justify-around bg-neutral-50 border-gray-200 px-4 lg:px-6 py-2.5">
        <div class="flex flex-wrap items-center mx-auto max-w-screen-xl">
            <div class="flex items-center lg:order-2">
                <button data-collapse-toggle="mobile-menu-2" type="button" class="inline-flex items-center p-2 ml-1 text-sm text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200" aria-controls="mobile-menu-2" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg>
                    <svg class="hidden w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                </button>
            </div>

            <div class="hidden flex justify-center w-full lg:flex lg:w-auto lg:order-1" id="mobile-menu-2">
                <ul class="flex flex-col mt-4 font-medium lg:flex-row lg:space-x-8 lg:mt-0">
                    <li>
                        <a href="${pageContext.request.contextPath}/hotelintroduce/introduce" class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-black-700 lg:p-0 ">호텔소개</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/room/roomStandard" class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-black-700 lg:p-0">객실</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/tour/tourList" class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-black-700 lg:p-0 ">즐길거리</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/booking/bookingList" class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-black-700 lg:p-0">예약하기</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/ask/ask" class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-black-700 lg:p-0">문의하기</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/review/reviewList" class="block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-black-700 lg:p-0">리뷰</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<script src="https://unpkg.com/flowbite@1.4.7/dist/flowbite.js"></script>