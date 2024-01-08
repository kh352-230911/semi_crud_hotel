<%--
  Created by IntelliJ IDEA.
  User: user1
  Date: 2024-01-02
  Time: 오후 4:34
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
        max-height: 700px;
        background-color: white; /* 배경색을 흰색으로 설정 */
        padding: 20px; /* 내부 여백을 설정 */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 그림자 효과를 추가 */
        margin-bottom: 20px; /* 섹션과 섹션 사이의 간격 */

    }
    section {
        width: 100vw;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    #map {
        width: 95%;
        height: 95%;
    }
    ul>li, h1{
        font-family: 'Diphylleia', serif;
        font-family: 'Grandiflora One', cursive;
        font-family: 'Nanum Myeongjo', serif;
    }

</style>
<body>
<div class="flex h-screen">
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

    <div class="content max-w-5xl mx-auto p-8">
        <h1 class="text-2xl font-bold text-gray-800">CRUD Hotel Location</h1>
        <p class="text-gray-600 text-sm mt-2 pb-6">
            Address - 48, Teheran-ro 14-gil, Gangnam-gu, Seoul, Republic of Korea
            <br>
            주소 - 서울특별시 강남구 테헤란로14길 48
        </p>
        <section>
            <div id="map"></div>
        </section>
    </div>
</div>

</body>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4d27601849c9209286843d85554892ed"></script>

<script type="text/javascript">
    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    var options = { //지도를 생성할 때 필요한 기본 옵션
        center: new kakao.maps.LatLng(37.498993, 127.032909), //지도의 중심좌표.
        level: 3 //지도의 레벨(확대, 축소 정도)
    };
    var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

    var markerPosition = new kakao.maps.LatLng(37.498993, 127.032909);

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
