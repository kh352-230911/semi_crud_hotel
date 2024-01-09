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
        <a onclick="request_pay();"></a>

    </div>
    <div class="w-1/2 h-1/2 m-auto top-[120px] flex items-center justify-center border border-gray-200 rounded-lg bg-gray-50 dark:bg-gray-800 dark:border-gray-700">
        <div class="px-3 py-1 text-xl font-medium leading-none text-center text-orange-900 bg-orange-200 rounded-full animate-pulse dark:bg-orange-200 dark:text-blue-200">결제가 진행중입니다.....</div>
    </div>
</div>



<!-- 아임포트 결제 api 호출-->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script>
    var IMP = window.IMP; // 생략 가능
    IMP.init("imp32105587"); // 가맹점 식별 코드

    // URLs for redirection
    var successUrl = contextPath + "/booking/bookingComplete";
    var failureUrl = contextPath + "/booking/bookingCheck";

    // IMP.request_pay(param, callback) 결제창 호출
    IMP.request_pay({ // param
        pg: "html5_inicis",
        pay_method: "card",
        merchant_uid: "100",
        // 주문번호는 결제 할때 마다 유일해야함 . 이미 결제된 주문번호는 결제가 되지 않아 실패됌.
        name: "CRUD 호텔 결제",
        amount: 100,
        buyer_email: "gildong@gmail.com",
        buyer_name: "홍길동",
        buyer_tel: "01042424242",
        // KG이니시스 결제는 전화번호 필수, 없으면 에러발생.
        buyer_addr: "서울특별시 강남구 신사동"
    }, function (rsp) { // callback
        if (rsp.success) {
            // 결제 성공 시 로직
            console.log('Payment Success:', rsp);
            alert('결제에 성공하셨습니다.');
            merchant_uid
            // 경고창이 표시되는 동안 JavaScript 실행이 일시 중지되고 이후에 제대로 재개되지 않을 수 있기 때문.
            // 이 문제를 해결하기 위해 setTimeout() 함수를 사용하여 경고가 해제된 후에 리디렉션.
            setTimeout(function() {
                window.location.href = successUrl;
            }, 10);
        } else {
            // 결제 실패 시 로직
            console.error('Payment Failed:', rsp);
            alert('결제에 실패하셨습니다.');
            setTimeout(function() {
                window.location.href = failureUrl;
            }, 10);
        }
    });
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>