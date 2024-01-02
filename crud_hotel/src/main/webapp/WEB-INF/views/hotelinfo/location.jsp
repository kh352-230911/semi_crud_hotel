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
    #map {
        width: 500px; /* 지도의 너비 */
        height: 400px; /* 지도의 높이 */
        margin: 50px auto; /* 위아래로 50px의 마진, 좌우는 자동으로 중앙에 배치 */
        display: block; /* display 속성을 block으로 설정 */
    }
</style>

<div id="map"></div>





<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4d27601849c9209286843d85554892ed"></script>


<script type="text/javascript">
    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    var options = { //지도를 생성할 때 필요한 기본 옵션
        center: new kakao.maps.LatLng(37.498993, 127.032909), //지도의 중심좌표.
        level: 3 //지도의 레벨(확대, 축소 정도)
    };
    var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

    var markerPosition  = new kakao.maps.LatLng(37.498993, 127.032909);

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
