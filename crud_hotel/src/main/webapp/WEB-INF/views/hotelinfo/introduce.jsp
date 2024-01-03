<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
    /* 전체 레이아웃을 위한 컨테이너 스타일 */
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

    /*!* 리스트 스타일 제거 *!*/
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

    /* 본문 스타일링 */
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
        box-shadow: 0 0 10px rgba(0,0,0,0.1); /* 그림자 효과를 추가 */
        margin-bottom: 20px; /* 섹션과 섹션 사이의 간격 */

    }

    /* 필요한 경우, 추가 스타일링 */
    h2 {
        color: #333; /* 제목의 색상을 설정 */
        margin-bottom: 10px; /* 제목 아래 여백 */
    }

    p {
        line-height: 1.6; /* 문단의 줄 간격 */
    }
</style>
<body>
<!-- 사이드바 메뉴 -->
<div class="flex h-screen">
    <!-- 사이드바 메뉴 -->
    <div class="w-64 bg-yellow-50 p-5 space-y-4">
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

    <!-- 본문 내용 -->
    <div class="content">
        <!-- 여기에 본문 내용을 추가하세요. 위의 HTML 코드 참조 -->
        <section>
            <h2>An Exclusive Getaway</h2>
            <p>휴양지에서의 휴식 같은 플로트를 즐길 수 있도록 다양한 ... 즐길 수 있습니다.</p>
            <!-- 이미지를 포함하는 방법 -->
            <img src="path_to_your_image_1.jpg" alt="Exclusive Getaway">
        </section>

        <section>
            <h2>A Leading Global Property</h2>
            <p>세계적인 명성을 자랑하는 호텔로서, 고객님께 최고의 서비스를 ... 드리고 있습니다.</p>
            <!-- 여러 이미지를 포함하는 방법 -->
            <div>
                <img src="path_to_your_image_2.jpg" alt="Global Property View 1">
                <img src="path_to_your_image_3.jpg" alt="Global Property View 2">
                <img src="path_to_your_image_4.jpg" alt="Global Property View 3">
            </div>
        </section>
    </div>
</div>

</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
