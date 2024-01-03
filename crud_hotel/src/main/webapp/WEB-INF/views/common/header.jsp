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
    <script
            src="https://code.jquery.com/jquery-3.7.1.js"
            integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

    <script>
        const contextPath = '${pageContext.request.contextPath}';
    </script>

    <script>
        <c:if test="${msg != null}">
        alert(`${msg}`); // 여러줄 입력이 가능하도록 `(백틱)으로 감싸야 한다.
        <%--  session속성 msg 제거해서 1회만(1회용) 출력되도록 한다. --%>
        <c:remove var="msg" scope="session" />
        </c:if>
    </script>


    <style>
        .my-custom-button {
            width: 100%;

        }
    </style>

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
                <span class="items-center justify-center self-center text-2xl font-semibold whitespace-nowrap">
                    <a href="${pageContext.request.contextPath}">
                       
                        CRUD Hotel
                    </a>
                </span>
            </div>

            <!-- Right Side Items -->
            <div class="flex-1 flex justify-evenly lg:flex-none">
                <c:if test="${loginMember eq null && loginManager eq null}">
                    <a href="${pageContext.request.contextPath}/member/memberLogin" class="text-gray-800 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-4 lg:px-5 py-2 lg:py-2.5 mr-2 focus:outline-none">Log in</a>
                    <a href="${pageContext.request.contextPath}/member/memberRegister" class="text-gray-800 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-4 lg:px-5 py-2 lg:py-2.5 mr-2 focus:outline-none">Register</a>
                </c:if>
                <c:if test="${loginMember ne null && loginManager eq null}">
                    <%-- 종아이콘 --%>
                    <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 21">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9.046 3.59-.435-2.324m.435 2.324a5.338 5.338 0 0 1 6.033 4.333l.331 1.77c.439 2.344 2.383 2.587 2.599 3.76.11.586.22 1.171-.309 1.271L5 17.101c-.529.1-.639-.488-.749-1.074-.219-1.172 1.506-2.102 1.067-4.447l-.331-1.769a5.338 5.338 0 0 1 4.059-6.22Zm-7.13 4.602a8.472 8.472 0 0 1 2.17-5.048m2.646 13.633A3.472 3.472 0 0 0 13.46 16l.089-.5-6.817 1.277Z"/>
                    </svg>

                    <!-- Dropdown menu -->
                    <button id="dropdownAvatarNameButton" data-dropdown-toggle="dropdownAvatarName" class="flex items-center text-sm pe-1 font-medium text-gray-900 rounded-full hover:text-blue-600 dark:hover:text-blue-500 md:me-0 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:text-white" type="button">
                        <span class="sr-only">Open user menu</span>
                        <img class="w-8 h-8 me-2 rounded-full" src="${pageContext.request.contextPath}/images/1.jpg" alt="user photo">
                            ${loginMember.memberId}
                        <svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                        </svg>
                    </button>
                <!-- 종아이콘 -->
                    <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 21">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9.046 3.59-.435-2.324m.435 2.324a5.338 5.338 0 0 1 6.033 4.333l.331 1.77c.439 2.344 2.383 2.587 2.599 3.76.11.586.22 1.171-.309 1.271L5 17.101c-.529.1-.639-.488-.749-1.074-.219-1.172 1.506-2.102 1.067-4.447l-.331-1.769a5.338 5.338 0 0 1 4.059-6.22Zm-7.13 4.602a8.472 8.472 0 0 1 2.17-5.048m2.646 13.633A3.472 3.472 0 0 0 13.46 16l.089-.5-6.817 1.277Z"/>
                    </svg>

                    <div class="flex justify-center">
                        <div class="relative inline-block mb-20">

                            <!-- Dropdown toggle button -->
                            <button id="dropdownDefault" data-dropdown-toggle="dropdown" type="button"
                                    class="relative z-10 flex items-center p-2 text-sm text-gray-600 bg-white border border-transparent rounded-md focus:border-blue-500 focus:ring-opacity-40 dark:focus:ring-opacity-40 focus:ring-blue-300 dark:focus:ring-blue-400 focus:ring dark:text-white dark:bg-gray-800 focus:outline-none my-custom-button">
                                <span class="mx-1 text-base leading-6">🔸${loginMember.memberId}🔸</span> <!-- text-base for font size, leading-6 for line height -->

                                <svg class="w-5 h-5 mx-1" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M12 15.713L18.01 9.70299L16.597 8.28799L12 12.888L7.40399 8.28799L5.98999 9.70199L12 15.713Z" fill="currentColor"></path>
                                </svg>
                            </button>

                            <!-- Dropdown menu -->
                            <div id="dropdown" class=" hidden absolute right-0 z-20 w-56 py-2 mt-2 overflow-hidden bg-white rounded-md shadow-xl dark:bg-gray-800">
                                <a href="#" class="flex items-center p-3 -mt-2 text-sm text-gray-600 transition-colors duration-200 transform dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 dark:hover:text-white">
                                    <img class="flex-shrink-0 object-cover mx-1 rounded-full w-9 h-9" src="${pageContext.request.contextPath}/images/1.jpg" alt="">
                                    <div class="mx-1">
                                        <h1 class="text-sm font-semibold text-gray-700 dark:text-gray-200">${loginMember.memberId}</h1>
                                        <p class="text-sm text-gray-500 dark:text-gray-400">🔸${loginMember.memberName}님🔸</p>
                                    </div>
                                </a>

                                <hr class="border-gray-200 dark:border-gray-700 ">

                                <a href="${pageContext.request.contextPath}/member/memberDetail" class="block px-4 py-3 text-sm text-gray-600 capitalize transition-colors duration-200 transform dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 dark:hover:text-white">
                                    내정보수정
                                </a>

                                <a href="#" class="block px-4 py-3 text-sm text-gray-600 capitalize transition-colors duration-200 transform dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 dark:hover:text-white">
                                    예약조회
                                </a>

                                <a href="#" class="block px-4 py-3 text-sm text-gray-600 capitalize transition-colors duration-200 transform dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 dark:hover:text-white">
                                    문의조회
                                </a>

                                <hr class="border-gray-200 dark:border-gray-700 ">

                                <a href="${pageContext.request.contextPath}/member/memberDelete" class="block px-4 py-3 text-sm text-gray-600 capitalize transition-colors duration-200 transform dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 dark:hover:text-white">
                                    회원탈퇴
                                </a>
                            </div>
                        </div>
                    </div>

                    <a href="${pageContext.request.contextPath}/member/memberLogout" class="mx-1 block">Log out</a>
                </c:if>
                <c:if test="${loginMember eq null && loginManager ne null}">
                    <%-- 종아이콘 --%>
                    <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 21">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m9.046 3.59-.435-2.324m.435 2.324a5.338 5.338 0 0 1 6.033 4.333l.331 1.77c.439 2.344 2.383 2.587 2.599 3.76.11.586.22 1.171-.309 1.271L5 17.101c-.529.1-.639-.488-.749-1.074-.219-1.172 1.506-2.102 1.067-4.447l-.331-1.769a5.338 5.338 0 0 1 4.059-6.22Zm-7.13 4.602a8.472 8.472 0 0 1 2.17-5.048m2.646 13.633A3.472 3.472 0 0 0 13.46 16l.089-.5-6.817 1.277Z"/>
                    </svg>

                    <div class="flex justify-center">
                        <div class="relative inline-block mb-20">

                            <!-- Dropdown toggle button -->
                            <button id="dropdownDefault" data-dropdown-toggle="dropdown" type="button"
                                    class="relative z-10 flex items-center p-2 text-sm text-gray-600 bg-white border border-transparent rounded-md focus:border-blue-500 focus:ring-opacity-40 dark:focus:ring-opacity-40 focus:ring-blue-300 dark:focus:ring-blue-400 focus:ring dark:text-white dark:bg-gray-800 focus:outline-none my-custom-button">
                                <span class="mx-1 text-base leading-6">🔸${loginManager.managerId}🔸</span> <!-- text-base for font size, leading-6 for line height -->
                                <svg class="w-5 h-5 mx-1" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M12 15.713L18.01 9.70299L16.597 8.28799L12 12.888L7.40399 8.28799L5.98999 9.70199L12 15.713Z" fill="currentColor"></path>
                                </svg>
                            </button>

                            <!-- Dropdown menu -->
                            <div id="dropdown" class=" hidden absolute right-0 z-20 w-56 py-2 mt-2 overflow-hidden bg-white rounded-md shadow-xl dark:bg-gray-800">
                                <a href="#" class="flex items-center p-3 -mt-2 text-sm text-gray-600 transition-colors duration-200 transform dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 dark:hover:text-white">
                                    <img class="flex-shrink-0 object-cover mx-1 rounded-full w-9 h-9" src="${pageContext.request.contextPath}/images/1.jpg" alt="">
                                    <div class="mx-1">
                                        <h1 class="text-sm font-semibold text-gray-700 dark:text-gray-200">${loginManager.managerId} 관리자</h1>
                                        <p class="text-sm text-gray-500 dark:text-gray-400">🔸${loginManager.managerName}님🔸</p>
                                    </div>
                                </a>

                                <hr class="border-gray-200 dark:border-gray-700 ">

                                <a href="${pageContext.request.contextPath}/manager/managerDetail" class="block px-4 py-3 text-sm text-gray-600 capitalize transition-colors duration-200 transform dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 dark:hover:text-white">
                                    내정보수정
                                </a>

                                <a href="#" class="block px-4 py-3 text-sm text-gray-600 capitalize transition-colors duration-200 transform dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 dark:hover:text-white">
                                    예약조회
                                </a>

                                <a href="#" class="block px-4 py-3 text-sm text-gray-600 capitalize transition-colors duration-200 transform dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 dark:hover:text-white">
                                    문의조회
                                </a>

                                <hr class="border-gray-200 dark:border-gray-700 ">

                                <a href="#" class="block px-4 py-3 text-sm text-gray-600 capitalize transition-colors duration-200 transform dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 dark:hover:text-white">
                                    회원탈퇴
                                </a>
                            </div>
                        </div>
                    </div>
                    <a href="${pageContext.request.contextPath}/member/memberLogout" class="mx-1 block">Log out</a>
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
