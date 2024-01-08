<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<div class="relative my-20 overflow-x-auto shadow-md sm:rounded-lg w-9/12 mx-auto">
    <table class="w-full text-sm text-center text-gray-500 dark:text-gray-400 mt-12">
        <thead class="text-xs text-gray-700 uppercase bg-orange-100 dark:bg-gray-700 dark:text-gray-400">
        <tr>
            <th scope="col" class="py-3 w-24">
                예약 번호
            </th>
            <th scope="col" class="py-3">
                방 번호
            </th>
            <th scope="col" class="py-3">
                예약자 성함
            </th>
            <th scope="col" class="py-3">
                체크인
            </th>
            <th scope="col" class="py-3">
                체크아웃
            </th>
            <th scope="col" class="py-3">
            </th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${bookings}" var="booking" varStatus="vs">
                <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-orange-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                    <th scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white text-center">
                            ${booking.bookingNum}
                    </th>
                    <td class="py-4">
                            ${booking.bookingRoomNum}
                    </td>
                    <td class="py-4">
                            ${booking.bookingName}
                    </td>
                    <td class="py-4">
                        <fmt:parseDate value="${booking.checkInDate}" pattern="yyyy-MM-dd'T'HH:mm" var="checkInDate"/>
                        <fmt:formatDate value="${checkInDate}" pattern="yy/MM/dd"/>
                    </td>
                    <td class="py-4">
                        <fmt:parseDate value="${booking.checkOutDate}" pattern="yyyy-MM-dd'T'HH:mm" var="checkOutDate"/>
                        <fmt:formatDate value="${checkOutDate}" pattern="yy/MM/dd"/>
                    </td>
                <%-- 예약취소 --%>
                    <td class="py-4">
                        <button onclick="if(confirm('🔸${booking.bookingName}님🔸\n🔹<fmt:formatDate value="${checkInDate}" pattern="yy/MM/dd"/>-입실🔹 \n예약을 정말 예약취소 하시겠습니까?')) { document.bookingDeleteFrm.submit(); }" type="submit" class="text-black bg-orange-200 hover:bg-orange-300 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium text-sm px-5 py-2.5 text-center">예약취소</button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <h2 class="text-bold text-xl absolute top-0 left-4">내예약목록</h2>
</div>

<form action="${pageContext.request.contextPath}/member/bookingDelete" method="post" name="bookingDeleteFrm">
    <input type="hidden" name="num" id="num" value="${bookings[0].bookingNum}">
</form>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>