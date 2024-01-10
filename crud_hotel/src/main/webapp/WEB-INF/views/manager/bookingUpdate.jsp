<%--
  Created by IntelliJ IDEA.
  User: user1
  Date: 2024-01-04
  Time: 오후 5:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
    .form-vertical {
        display: flex;
        flex-direction: column;
    }
</style>
<section class="bg-orange-50">
    <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto lg:py-0">
        <div class="w-full bg-white rounded-lg shadow my-4 sm:max-w-md xl:p-0">
            <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl">
                    ${booking.bookingName}님의 예약정보
                </h1>

                <form action="${pageContext.request.contextPath}/manager/BookingUpdate" method="post"
                      class="form-vertical">
                    <div>
                        <label for="num"
                               class="block mb-2 text-sm font-medium text-gray-900 after:content-['*'] after:ml-0.5 after:text-red-500">예약정보</label>
                        <input type="text" name="num" id="num" value="${booking.bookingNum}"
                               class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                               readonly required>
                    </div>
                    <div>
                        <label for="name"
                               class="block mb-2 text-sm font-medium text-gray-900 after:content-['*'] after:ml-0.5 after:text-red-500">Name</label>
                        <input type="text" name="name" id="name" value="${booking.bookingName}"
                               class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                               readonly required>
                    </div>
                    <div>
                        <label for="roomNum"
                               class="block mb-2 text-sm font-medium text-gray-900 after:content-['*'] after:ml-0.5 after:text-red-500">방번호</label>
                        <input type="text" name="roomNum" id="roomNum" value="${booking.bookingRoomNum}"
                               class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                               required>
                    </div>
                    <fmt:parseDate value="${booking.checkInDate}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedCheckInDate"/>
                    <fmt:formatDate value="${parsedCheckInDate}" pattern="yyyy-MM-dd" var="formattedCheckInDate"/>
                    <fmt:parseDate value="${booking.checkOutDate}" pattern="yyyy-MM-dd'T'HH:mm"
                                   var="parsedCheckOutDate"/>
                    <fmt:formatDate value="${parsedCheckOutDate}" pattern="yyyy-MM-dd" var="formattedCheckOutDate"/>
                    <div>
                        <label for="checkInDate" class="block mb-2 text-sm font-medium text-gray-900">체크인</label>
                        <input type="date" id="checkInDate" name="checkin" value="${formattedCheckInDate}"
                               class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                               required>
                    </div>
                    <div>
                        <label for="checkOutDate" class="block mb-2 text-sm font-medium text-gray-900">체크아웃</label>
                        <input type="date" id="checkOutDate" name="checkout" value="${formattedCheckOutDate}"
                               class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                               required>
                    </div>

                    <button type="submit"
                            class="my-10 text-black w-full bg-orange-200 hover:bg-orange-300 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">
                        저장
                    </button>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
