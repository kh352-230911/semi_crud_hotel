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
    <!-- 전체 컨테이너 -->
    <div class="flex h-screen">
        <!-- 사이드바 -->
        <div class="w-64 bg-yellow-50 p-5 space-y-4">
            <div><p class="text-2xl font-bold text-orange-100 dark:text-orange-300">객실 타입</p></div>
            <div>스탠다드</div>
            <div>프리미어</div>
            <div>스위트룸</div>
        </div>

        <!-- 메인 컨텐츠 -->
        <div class="flex-1 flex flex-col">

            <!-- 상단 메뉴 -->
            <div class="flex justify-between items-center p-10">
                <div><p class="text-2xl font-bold text-orange-100 dark:text-orange-300">스탠다드</p></div>
                <div>
                    <button id="dropdownDefaultButton" data-dropdown-toggle="dropdown" class="text-black bg-orange-300 hover:bg-orange-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-yellow-200 dark:hover:bg-yellow-700 dark:focus:ring-orange-800" type="button">객실목록<svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                    </svg>
                    </button>

                    <!-- Dropdown menu -->
                    <div id="dropdown" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700">
                        <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownDefaultButton">
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">A201</a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">A202</a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">A203</a>
                            </li>
                            <li>
                                <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">A204</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 객실 사진 섹션 -->
            <div class="flex-grow p-5 overflow-auto">
                <div class="bg-orange-100 p-3">
                    <h2 class="text-2xl mb-4"></h2>
                    <!-- 객실 사진 컨텐츠 -->
                    <div class="grid gap-4">
                        <div class="flex">
                            <div class="flex-1">
                                <img id="main-image" class="h-auto max-w-full rounded-lg" src="https://flowbite.s3.amazonaws.com/docs/gallery/featured/image.jpg" alt="Main Image">
                            </div>

                            <!-- 관련 내용이 표시될 영역 -->
                            <div class="flex-1 text-black p-4" id="imageInfo">
                                <p>● 스탠다드 방입니다. 옵션으로 싱글베드와 트윈베드가 있으며, 각 방 마다 옵션은 다릅니다.</p>
                                <br><br><br><br>
                                <p>● 관련 옵션 : 조식여부 / 수영장 이용가능여부 / 발렛주차 신청 여부</p>
                                <br><br><br><br>
                                <p>● 저희 호텔 처음 방문하신분들이 많이 이용하시며, CRUD Hotel은 최선을 다하겠습니다. </p>
                            </div>
                        </div>


                        <!-- 썸네일 이미지 -->
                        <div class="grid grid-cols-5 gap-4 mt-4">
                            <!-- 썸네일 이미지들 -->
                            <%-- 썸네일 이미지들에 onclick 이벤트를 추가하여 updateMainImage 함수를 호출 --%>
                            <div>
                                <img class="h-auto max-w-full rounded-lg cursor-pointer" src="https://flowbite.s3.amazonaws.com/docs/gallery/square/image-1.jpg" alt="Thumbnail" onclick="updateMainImage(this.src);">
                            </div>
                            <div>
                                <img class="h-auto max-w-full rounded-lg cursor-pointer" src="https://flowbite.s3.amazonaws.com/docs/gallery/square/image-2.jpg" alt="Thumbnail" onclick="updateMainImage(this.src);">
                            </div>
                            <div>
                                <img class="h-auto max-w-full rounded-lg cursor-pointer" src="https://flowbite.s3.amazonaws.com/docs/gallery/square/image-3.jpg" alt="Thumbnail" onclick="updateMainImage(this.src);">
                            </div>
                            <div>
                                <img class="h-auto max-w-full rounded-lg cursor-pointer" src="https://flowbite.s3.amazonaws.com/docs/gallery/square/image-4.jpg" alt="Thumbnail" onclick="updateMainImage(this.src);">
                            </div>
                            <div>
                                <img class="h-auto max-w-full rounded-lg cursor-pointer" src="https://flowbite.s3.amazonaws.com/docs/gallery/square/image-5.jpg" alt="Thumbnail" onclick="updateMainImage(this.src);">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%--src="#{pageContext.request.contextPath}/js/room/rooms.js"--%>
<script>
    function updateMainImage(src) {
        document.getElementById('main-image').src = src;
    }
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>