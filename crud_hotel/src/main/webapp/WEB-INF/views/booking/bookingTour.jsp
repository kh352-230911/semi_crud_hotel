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
<div class="w-[1280px] h-[720px] relative overflow-hidden bg-white">
    <p class="absolute left-[552px] top-[179px] text-base text-left text-[#715b3f]"></p>
    <svg
            width="86"
            height="2"
            viewBox="0 0 86 2"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            class="absolute left-[597.06px] top-[148.25px]"
            preserveAspectRatio="none"
    >
        <path d="M1.06396 1.25H84.7465" stroke="#D9D9D9" stroke-linecap="round"></path></svg
    ><svg
        width="35"
        height="35"
        viewBox="0 0 35 35"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
        class="absolute left-[564px] top-[132px]"
        preserveAspectRatio="xMidYMid meet"
>
    <circle cx="17.5" cy="17.5" r="17" fill="white" stroke="#D9D9D9"></circle></svg
><svg
        width="36"
        height="35"
        viewBox="0 0 36 35"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
        class="absolute left-[621px] top-[132px]"
        preserveAspectRatio="xMidYMid meet"
>
    <ellipse cx="18" cy="17.5" rx="18" ry="17.5" fill="#715B3F"></ellipse></svg
><svg
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
    <p class="absolute left-[576px] top-[136px] text-2xl text-left text-[#d9d9d9]">1</p>
    <p class="absolute left-[633px] top-[136px] text-2xl text-left text-[#d9d9d9]">2</p>
    <p class="absolute left-[689px] top-[136px] text-2xl text-left text-[#d9d9d9]">3</p>
    <svg
            width="924"
            height="2"
            viewBox="0 0 924 2"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            class="absolute left-[161.58px] top-[209px]"
            preserveAspectRatio="none"
    >
        <path d="M0.582031 1H922.888" stroke="#715B3F" stroke-linecap="round"></path></svg
    ><svg
        width="924"
        height="152"
        viewBox="0 0 924 152"
        fill="none"
        xmlns="http://www.w3.org/2000/svg"
        class="absolute left-[162px] top-[375px]"
        preserveAspectRatio="none"
>
    <path d="M1 1H923.306M1 151H923.306" stroke="#D9D9D9" stroke-linecap="round"></path>
</svg>
    <p class="absolute left-[567px] top-[180px] text-base text-left text-[#715b3f]">
        조건에 맞는 즐길거리 선택
    </p>
    <div class="w-[200px] h-[120px] absolute left-[162px] top-[239px] bg-[#d9d9d9]"></div>
    <div class="w-[120px] h-[30px] absolute left-[964px] top-[329px] bg-[#715b3f]"></div>
    <div class="w-[120px] h-[30px] absolute left-[964px] top-[479px] bg-[#715b3f]"></div>
    <div class="w-[200px] h-[120px] absolute left-[162px] top-[389px] bg-[#d9d9d9]"></div>
    <div class="w-[200px] h-[120px] absolute left-[162px] top-[539px] bg-[#d9d9d9]"></div>
    <p class="absolute left-[241px] top-[291px] text-base text-left text-black">이미지</p>
    <p class="absolute left-[241px] top-[441px] text-base text-left text-black">이미지</p>
    <div class="w-[1280px] h-[95px] absolute left-[-1px] top-[624px] bg-[#ded0b6]"></div>
    <p class="absolute left-[60px] top-[654px] text-3xl text-left text-black">CRUD Hotel</p>
    <p class="absolute left-[1005px] top-[337px] text-xl text-left text-white">
        <a href="${pageContext.request.contextPath}/booking/bookingCheck">예약</a></p>
    <p class="absolute left-[1007px] top-[487px] text-xl text-left text-white">
        <a href="${pageContext.request.contextPath}/booking/bookingCheck">예약</a></p>
    <p class="absolute left-[391px] top-[246px] text-xl text-left text-black">이름</p>
    <p class="absolute left-[391px] top-[399px] text-xl text-left text-black">이름</p>
    <p class="absolute left-[391px] top-[306px] text-[15px] text-left text-black">
        설명구문을 작성해야 합니다.
    </p>
    <p class="absolute left-[854px] top-[337px] text-[15px] text-left text-black">
        <span class="text-[15px] text-left text-black">가격 : 1박</span>
    </p>
    <p class="absolute left-[854px] top-[486px] text-[15px] text-left text-black">
        <span class="text-[15px] text-left text-black">가격 : 1박</span>
    </p>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>