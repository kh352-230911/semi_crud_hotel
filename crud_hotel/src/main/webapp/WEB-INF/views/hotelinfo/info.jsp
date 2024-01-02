<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
    /* 사이드바 스타일링 */
    .sidebar {
        width: 200px; /* 사이드바 너비 설정 */
        position: fixed; /* 사이드바를 화면에 고정 */
        top: 0;
        left: 0;
        height: 100%;
        background-color: #f9f9f9; /* 배경색 설정 */
        padding: 20px;
    }

    /* 리스트 스타일 제거 */
    .sidebar ul {
        list-style-type: none;
        padding: 0;
    }

    /* 링크 스타일링 */
    .sidebar a {
        text-decoration: none;
        color: black;
        display: block;
        padding: 10px;
        border-bottom: 1px solid #ddd; /* 아래 테두리 추가 */
    }

    .sidebar a:hover {
        background-color: #e0e0e0; /* 마우스 오버 효과 */
    }

    /* 본문 스타일링 */
    .content {
        margin-left: 220px; /* 사이드바 너비 + 여백 */
        padding: 20px;
    }
</style>
<body>
<!-- 사이드바 메뉴 -->
<div class="sidebar">
    <ul>
<%--        <li><a href="intro.html">호텔 소개</a></li>--%>
<%--        <li><a href="info.html">호텔 정보</a></li>--%>
<%--        <li><a href="location.html">호텔 위치</a></li>--%>
    </ul>
</div>

<!-- 본문 내용 -->
<div class="content">
    <!-- 여기에 본문 내용을 추가하세요. 위의 HTML 코드 참조 -->
    <section>
        <h2>An Exclusive Getaway</h2>
        <p>휴양지에서의 휴식 같은 플로트를 즐길 수 있도록 다양한 ... 즐길 수 있습니다.</p>
        <!-- 이미지를 포함하는 방법 -->
<%--        <img src="path_to_your_image_1.jpg" alt="Exclusive Getaway">--%>
    </section>

    <section>
        <h2>A Leading Global Property</h2>
        <p>세계적인 명성을 자랑하는 호텔로서, 고객님께 최고의 서비스를 ... 드리고 있습니다.</p>
        <!-- 여러 이미지를 포함하는 방법 -->
        <div>
<%--            <img src="path_to_your_image_2.jpg" alt="Global Property View 1">--%>
<%--            <img src="path_to_your_image_3.jpg" alt="Global Property View 2">--%>
<%--            <img src="path_to_your_image_4.jpg" alt="Global Property View 3">--%>
        </div>
    </section>
</div>

</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
