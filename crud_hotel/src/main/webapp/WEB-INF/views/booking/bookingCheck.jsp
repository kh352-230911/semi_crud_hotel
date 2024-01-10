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
    .w-80 {
        width: 35rem;
    }
</style>

<div class="flex justify-center items-start bg-white">
    <div class="w-[1280px] h-[220px] relative overflow-hidden bg-white">
        <p class="absolute left-[410px] top-[140px] text-[32px] text-left text-[#715b3f]">
            선택한 예약내용을 확인해주세요.
        </p>
        <svg
                width="924"
                height="2"
                viewBox="0 0 924 2"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
                class="absolute left-[161.58px] top-[209px] mb-[10px]"
                preserveAspectRatio="none"
        >
            <path d="M0.582031 1H922.888" stroke="#715B3F" stroke-linecap="round"></path>
        </svg>
    </div>
</div>

<%-- 예약완료 폼영역 --%>
<div class="flex justify-center items-start bg-white">
    <div class="flex h-screen items-center justify-center">
        <div class="w-80 rounded bg-gray-50 px-6 pt-8 shadow-lg">
            <div class="flex flex-col justify-center items-center gap-2">
                <h3 class="p-4 mb-4 text-sm text-black rounded-lg bg-orange-100 dark:bg-gray-800 dark:text-yellow-300">CRUD Hotel Booking Check</h3>
            </div>
            <div class="flex flex-col justify-center items-center gap-2">
                <h4 class="font-semibold">Member ID</h4>
                <p class="text-xs">${loginMember.memberId}</p>
            </div>
            <div class="p-4 flex flex-col justify-center items-center gap-2">
                <c:if test="${loginMember.bookingCount ge 0 && loginMember.bookingCount le 3}">  <%--0 ~ 3 --%>
                    <span class="bg-blue-100 text-blue-800 text-xs font-medium me-2 px-2.5 py-0.5 rounded-full dark:bg-blue-900 dark:text-blue-300">${loginMember.memberPride}</span> <%-- bronze --%>
                </c:if>
                <c:if test="${loginMember.bookingCount gt 3 && loginMember.bookingCount le 10}"> <%--3 ~ 10 --%>
                    <span class="bg-gray-100 text-gray-800 text-xs font-medium me-2 px-2.5 py-0.5 rounded-full dark:bg-gray-700 dark:text-gray-300">${loginMember.memberPride}</span> <%-- silver --%>
                </c:if>
                <c:if test="${loginMember.bookingCount gt 10 && loginMember.bookingCount le 25}"> <%--10 ~ 25 --%>
                    <span class="m-20 flex-grow bg-yellow-100 text-yellow-800 text-xs font-medium me-2 px-2.5 py-0.5 rounded-full dark:bg-yellow-900 dark:text-yellow-300">${loginMember.memberPride}</span> <%--gold --%>
                </c:if>
                <c:if test="${loginMember.bookingCount gt 25 && loginMember.bookingCount lt 50}"> <%--25 ~ 50 --%>
                    <span class="bg-purple-100 text-purple-800 text-xs font-medium me-2 px-2.5 py-0.5 rounded-full dark:bg-purple-900 dark:text-purple-300">${loginMember.memberPride}</span> <%--platinum --%>
                </c:if>
                <c:if test="${loginMember.bookingCount ge 50}"> <%-- 50 ~ 이상 --%>
                    <span class="bg-pink-100 text-pink-800 text-xs font-medium me-2 px-2.5 py-0.5 rounded-full dark:bg-pink-900 dark:text-pink-300">${loginMember.memberPride}</span> <%--diamond --%>
                </c:if>
            </div>

            <div class="flex flex-col gap-3 border-b py-6 text-xs">
                <p class="flex justify-between">
                    <span class="text-gray-400">Room Type:</span>
                    <span>${room.roomNum}</span>
                </p>
                <p class="flex justify-between">
                    <span class="text-gray-400">Check-in:</span>
                    <span>
                        ${checkInDate}
                        </span>
                </p>
                <p class="flex justify-between">
                    <span class="text-gray-400">Check-out:</span>
                    <span>
                        ${checkOutDate}
                        </span>
                </p>
                <p class="flex justify-between">
                    <span class="text-gray-400">the number of people:</span>
                    <span>${roomPeople}</span>
                </p>
                <p class="flex justify-between">
                    <span class="text-gray-400">Reservation Name:</span>
                    <span>${loginMember.memberName}</span>
                </p>
            </div>
            <div class="flex flex-col gap-3 pb-6 pt-2 text-xs">
                <table class="w-full text-left">
                    <thead>
                    <tr class="flex">
                        <th class="w-full py-2">Amount</th>
                        <th class="min-w-[44px] py-2 pr-20">Discount</th>
                        <th class="min-w-[44px] py-2">Total</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="flex py-1">
                        <td class="flex-1">${room.roomPrice}</td>
                        <td class="min-w-[44px] pr-20">${tbPride.discount}</td>
                        <td class="min-w-[44px]">${room.roomPrice * (1 - tbPride.discount)}</td>
                    </tr>
                    </tbody>
                </table>
                <div class=" border-b border border-dashed"></div>

<%--                <div class="py-4 justify-center items-center flex flex-col gap-2">--%>
<%--                    <p class="flex gap-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"><path d="M21.3 12.23h-3.48c-.98 0-1.85.54-2.29 1.42l-.84 1.66c-.2.4-.6.65-1.04.65h-3.28c-.31 0-.75-.07-1.04-.65l-.84-1.65a2.567 2.567 0 0 0-2.29-1.42H2.7c-.39 0-.7.31-.7.7v3.26C2 19.83 4.18 22 7.82 22h8.38c3.43 0 5.54-1.88 5.8-5.22v-3.85c0-.38-.31-.7-.7-.7ZM12.75 2c0-.41-.34-.75-.75-.75s-.75.34-.75.75v2h1.5V2Z" fill="#000"></path><path d="M22 9.81v1.04a2.06 2.06 0 0 0-.7-.12h-3.48c-1.55 0-2.94.86-3.63 2.24l-.75 1.48h-2.86l-.75-1.47a4.026 4.026 0 0 0-3.63-2.25H2.7c-.24 0-.48.04-.7.12V9.81C2 6.17 4.17 4 7.81 4h3.44v3.19l-.72-.72a.754.754 0 0 0-1.06 0c-.29.29-.29.77 0 1.06l2 2c.01.01.02.01.02.02a.753.753 0 0 0 .51.2c.1 0 .19-.02.28-.06.09-.03.18-.09.25-.16l2-2c.29-.29.29-.77 0-1.06a.754.754 0 0 0-1.06 0l-.72.72V4h3.44C19.83 4 22 6.17 22 9.81Z" fill="#000"></path></svg> info@http://localhost:8080/crud_hotel/</p>--%>
<%--                    <p class="flex gap-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"><path fill="#000" d="M11.05 14.95L9.2 16.8c-.39.39-1.01.39-1.41.01-.11-.11-.22-.21-.33-.32a28.414 28.414 0 01-2.79-3.27c-.82-1.14-1.48-2.28-1.96-3.41C2.24 8.67 2 7.58 2 6.54c0-.68.12-1.33.36-1.93.24-.61.62-1.17 1.15-1.67C4.15 2.31 4.85 2 5.59 2c.28 0 .56.06.81.18.26.12.49.3.67.56l2.32 3.27c.18.25.31.48.4.7.09.21.14.42.14.61 0 .24-.07.48-.21.71-.13.23-.32.47-.56.71l-.76.79c-.11.11-.16.24-.16.4 0 .08.01.15.03.23.03.08.06.14.08.2.18.33.49.76.93 1.28.45.52.93 1.05 1.45 1.58.1.1.21.2.31.3.4.39.41 1.03.01 1.43zM21.97 18.33a2.54 2.54 0 01-.25 1.09c-.17.36-.39.7-.68 1.02-.49.54-1.03.93-1.64 1.18-.01 0-.02.01-.03.01-.59.24-1.23.37-1.92.37-1.02 0-2.11-.24-3.26-.73s-2.3-1.15-3.44-1.98c-.39-.29-.78-.58-1.15-.89l3.27-3.27c.28.21.53.37.74.48.05.02.11.05.18.08.08.03.16.04.25.04.17 0 .3-.06.41-.17l.76-.75c.25-.25.49-.44.72-.56.23-.14.46-.21.71-.21.19 0 .39.04.61.13.22.09.45.22.7.39l3.31 2.35c.26.18.44.39.55.64.1.25.16.5.16.78z"></path></svg> +234XXXXXXXX</p>--%>
<%--                </div>--%>
<%--                <div class="py-4 justify-center items-center flex flex-col gap-2">--%>
<%--                    <a class="p-4 mb-4 text-sm text-white rounded-lg bg-orange-900 dark:bg-gray-800 dark:text-yellow-300"--%>
<%--                       href="${pageContext.request.contextPath}/booking/bookingPay"> 결제하기--%>
<%--                    </a>--%>
<%--                </div>--%>
                    <div class="py-4 justify-center items-center flex flex-col gap-2">
                        <p class="flex gap-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"><path d="M21.3 12.23h-3.48c-.98 0-1.85.54-2.29 1.42l-.84 1.66c-.2.4-.6.65-1.04.65h-3.28c-.31 0-.75-.07-1.04-.65l-.84-1.65a2.567 2.567 0 0 0-2.29-1.42H2.7c-.39 0-.7.31-.7.7v3.26C2 19.83 4.18 22 7.82 22h8.38c3.43 0 5.54-1.88 5.8-5.22v-3.85c0-.38-.31-.7-.7-.7ZM12.75 2c0-.41-.34-.75-.75-.75s-.75.34-.75.75v2h1.5V2Z" fill="#000"></path><path d="M22 9.81v1.04a2.06 2.06 0 0 0-.7-.12h-3.48c-1.55 0-2.94.86-3.63 2.24l-.75 1.48h-2.86l-.75-1.47a4.026 4.026 0 0 0-3.63-2.25H2.7c-.24 0-.48.04-.7.12V9.81C2 6.17 4.17 4 7.81 4h3.44v3.19l-.72-.72a.754.754 0 0 0-1.06 0c-.29.29-.29.77 0 1.06l2 2c.01.01.02.01.02.02a.753.753 0 0 0 .51.2c.1 0 .19-.02.28-.06.09-.03.18-.09.25-.16l2-2c.29-.29.29-.77 0-1.06a.754.754 0 0 0-1.06 0l-.72.72V4h3.44C19.83 4 22 6.17 22 9.81Z" fill="#000"></path></svg> info@http://localhost:8080/crud_hotel/</p>
                        <p class="flex gap-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"><path fill="#000" d="M11.05 14.95L9.2 16.8c-.39.39-1.01.39-1.41.01-.11-.11-.22-.21-.33-.32a28.414 28.414 0 01-2.79-3.27c-.82-1.14-1.48-2.28-1.96-3.41C2.24 8.67 2 7.58 2 6.54c0-.68.12-1.33.36-1.93.24-.61.62-1.17 1.15-1.67C4.15 2.31 4.85 2 5.59 2c.28 0 .56.06.81.18.26.12.49.3.67.56l2.32 3.27c.18.25.31.48.4.7.09.21.14.42.14.61 0 .24-.07.48-.21.71-.13.23-.32.47-.56.71l-.76.79c-.11.11-.16.24-.16.4 0 .08.01.15.03.23.03.08.06.14.08.2.18.33.49.76.93 1.28.45.52.93 1.05 1.45 1.58.1.1.21.2.31.3.4.39.41 1.03.01 1.43zM21.97 18.33a2.54 2.54 0 01-.25 1.09c-.17.36-.39.7-.68 1.02-.49.54-1.03.93-1.64 1.18-.01 0-.02.01-.03.01-.59.24-1.23.37-1.92.37-1.02 0-2.11-.24-3.26-.73s-2.3-1.15-3.44-1.98c-.39-.29-.78-.58-1.15-.89l3.27-3.27c.28.21.53.37.74.48.05.02.11.05.18.08.08.03.16.04.25.04.17 0 .3-.06.41-.17l.76-.75c.25-.25.49-.44.72-.56.23-.14.46-.21.71-.21.19 0 .39.04.61.13.22.09.45.22.7.39l3.31 2.35c.26.18.44.39.55.64.1.25.16.5.16.78z"></path></svg> +234XXXXXXXX</p>
                        <p class="text-red-500 flex gap-2">* 각 회원등급에 따라 discount가 적용됩니다. *</p>
                    </div>
                <div class="flex justify-center items-start bg-white">
                    <!-- 예약완료 폼영역 -->
                    <form action="${pageContext.request.contextPath}/booking/bookingPay" method="post">
                            <!-- 폼 내용 -->

                            <!-- Hidden 필드로 데이터 전송 -->
                            <input type="hidden" name="memberId" value="${loginMember.memberId}">
                            <input type="hidden" name="roomNum" value="${room.roomNum}">
                            <input type="hidden" name="memberName" value="${loginMember.memberName}">
                            <input type="hidden" name="checkInDate" value="${checkInDate}">
                            <input type="hidden" name="checkOutDate" value="${checkOutDate}">

                            <!-- 결제하기 버튼 -->
                            <div class="py-4 justify-center items-center flex flex-col gap-2">
                                <button type="submit" class="p-4 mb-4 text-sm text-white rounded-lg bg-orange-900 dark:bg-gray-800 dark:text-yellow-300">
                                    결제하기
                                </button>
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>