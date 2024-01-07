<%--
  Created by IntelliJ IDEA.
  User: user1
  Date: 2024-01-02
  Time: 오후 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
    .layout {
        display: flex; /* flexbox 레이아웃 사용 */
        margin-left: 100px; /* 기존 사이드바의 너비만큼 여백 설정 */
        margin-top: 100px;
    }

    /*!* 사이드바 스타일링 *!*/
    /*.sidebar {*/
    /*    width: 200px; !* 사이드바 너비 설정 *!*/
    /*    height: 200px;*/
    /*    background-color: #f9f9f9; !* 배경색 설정 *!*/
    /*    padding: 20px;*/
    /*    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1); !* 그림자 효과 추가 *!*/
    /*}*/

    /*.sidebar ul {*/
    /*    list-style-type: none;*/
    /*    padding: 0;*/
    /*    margin: 0; !* 추가된 부분 *!*/
    /*}*/

    /* 링크 스타일링 */
    .sidebar a {
        text-decoration: none;
        color: black;
        display: block;
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }

    .sidebar a:hover {
        background-color: #e0e0e0;
    }

    .content {
        flex-grow: 1; /* 나머지 공간을 채우도록 설정 */
        box-sizing: border-box;
        padding-left: 40px;
        padding-bottom: 100px;
    }

    .content > section {
        /*margin: 0 auto;*/
        max-width: 800px; /* 섹션의 최대 너비를 설정할 수 있습니다 */
        background-color: white; /* 배경색을 흰색으로 설정 */
        padding: 20px; /* 내부 여백을 설정 */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 효과를 추가 */
        margin-bottom: 20px; /* 섹션과 섹션 사이의 간격 */

    }
    p, h1{
        font-family: 'Diphylleia', serif;
        font-family: 'Grandiflora One', cursive;
        font-family: 'Nanum Myeongjo', serif;
    }
</style>

<body class="bg-white text-gray-800">
<div class="flex h-screen">
    <!-- 사이드바 메뉴 -->
    <div id="aaa" class="w-64 bg-yellow-50 p-5 space-y-4">
        <ul>
            <li><a href="${pageContext.request.contextPath}/hotelintroduce/introduce">
                <p class="text-2xl font-bold text-orange-300 dark:text-orange-300">호텔 소개</p>
            </a></li>
            <br>
            <li><a href="${pageContext.request.contextPath}/hotelinfo/info">
                <p class="text-2xl font-bold text-orange-300 dark:text-orange-300">호텔 정보</p>
            </a></li>
            <br>
            <li><a href="${pageContext.request.contextPath}/hotellocation/location">
                <p class="text-2xl font-bold text-orange-300 dark:text-orange-300">호텔 위치</p>
            </a></li>
        </ul>
    </div>

         <div class="content max-w-5xl mx-auto p-8">
             <section>
                <div class="border-b-2 pb-4 mb-4">
                    <h1 class="text-2xl font-semibold">CRUD Hotel Info.</h1>
                </div>
                <div class="grid md:grid-cols-2 gap-4">
                </div>
                <section>
                    <div>
                        <h2 class="text-xl font-semibold mb-2">개관일</h2>
                        <p class="pb-1">1990년 7월 1일(최종 리뉴얼 개관: 1998.7.1)</p>
                        <hr>

                        <!-- ... 나머지 정보 ... -->

                        <h2 class="text-xl font-semibold mb-2 ">주소</h2>
                        <p class="pb-1">서울특별시 강남구 테헤란로14길 48</p>
                        <hr>

                        <!-- ... 나머지 정보 ... -->

                        <h2 class="text-xl font-semibold mb-2">대표전화</h2>
                        <p class="pb-1">TEL. 02-1111-2222, 팩스 : 064-735-5414</p>
                        <hr>

                        <h2 class="text-xl font-semibold mb-2">객실수</h2>
                        <p class="pb-1">30개 보유</p>
                        <hr>
                        <!-- ... 나머지 정보 ... -->

                        <h2 class="text-xl font-semibold mb-2 mt-4">홈페이지</h2>
                        <a href="http://localhost:8080/crud_hotel/"
                           class="pb-1 text-orange-800 hover:underline">http://localhost:8080/crud_hotel/</a>
                        <hr>
                        <!-- ... 나머지 정보 ... -->
                    </div>
                </section>
            </section>
         </div>
    </div>
</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
