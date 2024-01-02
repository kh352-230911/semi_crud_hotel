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
        
        margin-left: 100px; /* 기존 사이드바의 너비만큼 여백 설정 */
        margin-top: 100px;

    }

    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
    }

    .main-container {
        flex: 1;
        display: flex;
        flex-direction: column;
        align-items: center; /* 수직 중앙 정렬 */
        justify-content: center; /* 수평 중앙 정렬 */
        padding: 50px 0; /* 상하 여백 */
        width: 50vw;
        margin: 0 auto; /* 좌우 자동 마진으로 중앙 정렬 */
    }

    #map {
        width: 500px;
        height: 400px;

    }


    .sidebar {
        width: 200px; /* 사이드바 너비 설정 */
        height: 200px;
        background-color: #f9f9f9; /* 배경색 설정 */
        padding: 20px;
        box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */

    }

    .sidebar ul {
        list-style-type: none;
        padding: 0;
        margin: 0; /* 추가된 부분 */
    }

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

</style>
<body>
<div class="layout ">
    <div class="sidebar">
        <ul>
            <li><a href="${pageContext.request.contextPath}/hotelintroduce/introduce">호텔 소개</a></li>
            <li><a href="${pageContext.request.contextPath}/hotelinfo/info">호텔 정보</a></li>
            <li><a href="${pageContext.request.contextPath}/hotellocation/location">호텔 위치</a></li>
        </ul>
    </div>


</div>
<div class="main-container">

    <div id="map"></div>
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
