<%--
  Created by IntelliJ IDEA.
  User: user1
  Date: 2024-01-04
  Time: 오후 2:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<div class="relative overflow-x-auto shadow-md sm:rounded-lg w-9/12 mx-auto mt-4">
    <h2 class="text-bold text-xl absolute top-0 left-4">예약목록</h2>
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
            <form action="${pageContext.request.contextPath}/manager/managerBookingCheck" method="post" name="memberBookingUpdateFrm${vs.index}">
            <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
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
                <td class="py-4">

<%--                    <input type="hidden" name="bookingNum" value="${booking.bookingNum}"/>--%>
<%--                    <button type="button" onclick="handleUpdateConfirmation('${booking.bookingName}', ${vs.index})" class="font-medium text-red-600 hover:underline">--%>
<%--                    </button>--%>
                    <input type="hidden" name="bookingNum" value="${booking.bookingNum}" />
                    <button type="button" onclick="handleUpdateConfirmation('${booking.bookingName}', ${vs.index})" class="text-black bg-orange-200 hover:bg-orange-300 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium text-sm px-5 py-2.5 text-center">

                        수정
                    </button>
                </td>
            </tr>
        </form>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="flex justify-center mt-6">
    <nav aria-label="Page navigation">
        <ul class="my-8 flex items-center -space-x-px h-8 text-sm">
            ${pagebar}
        </ul>
    </nav>
</div>
<script>
    function handleUpdateConfirmation(bookingName, index) {
        if (confirm(bookingName + ' 님의 예약정보를 수정하시겠습니까?')) {
            document.forms['memberBookingUpdateFrm' + index].submit();
        }
    }
</script>
<% if (session.getAttribute("error") != null) { %>
<script type="text/javascript">
    alert('<%= session.getAttribute("error") %>');
    session.removeAttribute("error");  // 오류 메시지를 표시한 후 세션에서 제거
</script>
<% } %>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
