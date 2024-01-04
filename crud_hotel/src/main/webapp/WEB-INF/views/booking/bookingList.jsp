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

<div class="w-full h-full relative overflow-hidden bg-white">
    <p class="absolute left-[570px] top-[180px] text-base text-left text-[#715b3f]">
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
    </svg
    >
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
    </svg
    >
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
    </svg
    >
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
    <p class="absolute left-[576px] top-[136px] text-2xl text-left text-white">1</p>
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
        <path d="M0.582031 1H922.888" stroke="#715B3F" stroke-linecap="round"></path>
    </svg>
    <p class="absolute left-[489px] top-[227px] text-[13px] text-left text-black">
        객실 유형을 선택해주세요
    </p>
    <p class="absolute left-[488px] top-72 text-[13px] text-left text-black">날짜를 선택해주세요</p>
    <p class="absolute left-[489px] top-[409px] text-[13px] text-left text-black">
        객실을 선택해주세요.
    </p>
    <p class="absolute left-[487px] top-[348px] text-[13px] text-left text-black">
        인원 수를 선택해주세요. [최대 4명]
    </p>
    <p class="absolute left-[488px] top-[472px] text-[13px] text-left text-black">
        침대 종류를 선택해주세요.
    </p>
    <div class="w-[87px] h-6 absolute left-[488px] top-[249px] bg-white border border-black/20"></div>
    <div
            class="w-[126px] h-6 absolute left-[487px] top-[310px] bg-white border border-black/20"
    ></div>
    <div
            class="w-[126px] h-6 absolute left-[666px] top-[310px] bg-white border border-black/20"
    ></div>
    <div class="w-[30px] h-6 absolute left-[488px] top-[370px] bg-white border border-black/20"></div>
    <div class="w-[30px] h-6 absolute left-[488px] top-[431px] bg-white border border-black/20"></div>
    <div class="w-[30px] h-6 absolute left-[488px] top-[494px] bg-white border border-black/20"></div>
    <div class="w-[304px] h-11 absolute left-[488px] top-[562px] bg-[#715b3f]"></div>
    <p class="absolute left-[675px] top-[315px] text-[13px] text-left text-[#715b3f]">체크아웃</p>
    <p class="absolute left-[496px] top-[315px] text-[13px] text-left text-[#715b3f]">체크인</p>
    <p class="absolute left-[619px] top-[571px] text-2xl text-left text-white">검색</p>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>