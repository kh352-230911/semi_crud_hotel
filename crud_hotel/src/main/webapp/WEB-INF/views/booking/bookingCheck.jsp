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
        <p class="absolute left-[410px] top-[140px] text-[32px] text-left text-[#715b3f]">
            선택한 예약내용을 확인해주세요.
        </p>
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
        </svg>
        <div class="w-[426px] h-[68px] absolute left-[430px] top-[507px] bg-[#d9d9d9]"></div>
        <p class="absolute left-[577px] top-[520px] text-4xl text-left text-black">
            <a href="${pageContext.request.contextPath}/booking/bookingPay">결제하기</a></p>
        <div class="w-[422px] h-[247px] absolute left-[434px] top-[228px] bg-[#d9d9d9]"></div>
        <p class="absolute left-[506px] top-[330px] text-4xl text-left text-black">예약 내용 출력</p>
    </div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>