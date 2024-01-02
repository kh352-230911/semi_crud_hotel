
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <header>
        <!-- 상단 옐로우 배경 -->
        <div class="w-full h-32 bg-yellow-50 flex items-center justify-between px-4">
            <!-- 빈 div를 추가하여 왼쪽 공간을 맞춤 -->
            <div></div>

            <!-- CRUD Hotel을 중앙에 배치 -->
            <div class="text-4xl font-normal">
                CRUD Hotel
            </div>

            <!-- Login과 Register를 오른쪽에 배치 -->
            <div>
                <a href="${pageContext.request.contextPath}/login" class="text-xl font-normal pr-4">Login</a>
                <a href="${pageContext.request.contextPath}/register" class="text-xl font-normal">Register</a>
            </div>
        </div>

        <!-- 오렌지 배경 with 나머지 메뉴 -->
        <div class="w-full h-20 bg-orange-100 flex items-center justify-around">
            <a href="${pageContext.request.contextPath}/hotelinfo/info" class="text-xl font-normal">호텔소개</a>
            <a href="${pageContext.request.contextPath}/rooms" class="text-xl font-normal">객실</a>
            <a href="${pageContext.request.contextPath}/activities" class="text-xl font-normal">즐길거리</a>
            <a href="${pageContext.request.contextPath}/reserve" class="text-xl font-normal">예약하기</a>
            <a href="${pageContext.request.contextPath}/activities" class="text-xl font-normal">리뷰</a>
            <a href="${pageContext.request.contextPath}/contact" class="text-xl font-normal">문의하기</a>
        </div>
    </header>
<main>

