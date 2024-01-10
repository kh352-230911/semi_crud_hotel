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

<div class="w-full h-screen flex-col justify-center items-start bg-white">
    <div class="w-[1280px] h-[300px] mx-auto relative overflow-hidden bg-white">
        <p class="absolute left-[553px] top-[180px] text-base text-left text-[#715b3f]">
            걸제방법 및 할인혜택 선택
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
        <path
                d="M35.5 17.5C35.5 26.8757 27.6784 34.5 18 34.5C8.32165 34.5 0.5 26.8757 0.5 17.5C0.5 8.12434 8.32165 0.5 18 0.5C27.6784 0.5 35.5 8.12434 35.5 17.5Z"
                fill="white"
                stroke="#D9D9D9"
        ></path></svg
    ><svg
            width="35"
            height="35"
            viewBox="0 0 35 35"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            class="absolute left-[679px] top-[132px]"
            preserveAspectRatio="xMidYMid meet"
    >
        <circle cx="17.5" cy="17.5" r="17.5" fill="#715B3F"></circle>
    </svg>
        <p class="absolute left-[576px] top-[136px] text-2xl text-left text-[#d9d9d9]">1</p>
        <p class="absolute left-[633px] top-[136px] text-2xl text-left text-[#d9d9d9]">2</p>
        <p class="absolute left-[689px] top-[136px] text-2xl text-left text-white">3</p>
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

        <a onclick="request_pay(); redirectToCompletePage();"></a>

    </div>
    <div class="w-[640] h-1/2 m-auto flex items-center justify-center border border-gray-200 rounded-lg bg-gray-50 dark:bg-gray-800 dark:border-gray-700">
        <div class="px-3 py-1 text-xl font-medium leading-none text-center text-orange-900 bg-orange-200 rounded-full animate-pulse dark:bg-orange-200 dark:text-blue-200">결제 진행중...</div>
    </div>
</div>


<script>
    function redirectToCompletePage() {
        window.location.href = '${pageContext.request.contextPath}/booking/bookingComplete';
    }
    setTimeout(redirectToCompletePage, 3000);
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>