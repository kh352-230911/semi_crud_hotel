<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }

    .top-banner {
        position: relative;
        display: flex;
        width: 100vw;
        height: 100vh;
        background: url(https://cdn.pixabay.com/photo/2017/03/09/06/30/pool-2128578_640.jpg)
        no-repeat center / cover;
    }

    .top-banner-overlay {
        display: flex;
        flex-direction: column;
        justify-content: center;
        width: 350px;
        padding: 20px;
        transition: all 0.7s;
        background: rgba(0, 0, 0, 0.6);
    }

    .top-banner-overlay.is-moved {
        transform: translateX(350px);
    }
    .top-banner-overlay.is-moved::before {
        content: "";
        position: absolute;
        top: 0;
        bottom: 0;
        right: 100%;
        width: 20px;
        box-shadow: 3px 0 10px rgba(0, 0, 0, .75);
    }

</style>

<%-- 예약폼 날짜 영역 --%>
<section class="top-banner">
    <div class="top-banner-overlay">
        <h1 class="text-white">예약하기</h1>
        <p class="text-white">check-in</p>
        <div class="relative max-w-sm">
            <div class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
                <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                    <path d="M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z"/>
                </svg>
            </div>
            <input datepicker datepicker-orientation="bottom right" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full ps-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Select date">
        </div>
        <p class="text-white">check-out</p>
        <div class="relative max-w-sm">
            <div class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
                <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                    <path d="M20 4a2 2 0 0 0-2-2h-2V1a1 1 0 0 0-2 0v1h-3V1a1 1 0 0 0-2 0v1H6V1a1 1 0 0 0-2 0v1H2a2 2 0 0 0-2 2v2h20V4ZM0 18a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8H0v10Zm5-8h10a1 1 0 0 1 0 2H5a1 1 0 0 1 0-2Z"/>
                </svg>
            </div>
            <input datepicker datepicker-orientation="bottom right" type="text" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full ps-10 p-2.5  dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Select date">
        </div>
    </div>
</section>



<jsp:include page="/WEB-INF/views/common/footer.jsp"/>


