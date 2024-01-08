<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<div class="container bg-orange-100 mx-auto mt-8 mb-16">
    <form name="reviewInsertFrm" method="post" enctype="multipart/form-data">
        <div class="w-9/12 flex-wrap mx-auto">
            <div class="w-1/4 mt-8 border border-gray-200 bg-gray-200">
                    <label for="revId">작성자 : ${loginMember.memberId}</label>
                    <input type="hidden" id="revId" name="revId" value="${loginMember.memberId}">
            </div>
            <div class="w-4/12 mt-4 border border-gray-200 bg-gray-50">
                <div class="bg-white">
                    <label for="revRoomNum"></label>
                    <input type="text" id="revRoomNum" name="revRoomNum" class="w-full text-sm text-gray-800 bg-white border-0 focus:ring-blue-500" placeholder="방 번호를 입력해주세요" required>
                </div>
            </div>
            <div class="w-full mt-4">
                <label for="revScore">리뷰 점수 선택 : </label>
                <select id="revScore" name="revScore" class="ml-4 w-1/8 border-0" required>
                    <option value="" disabled selected>선택</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </div>
            <div class="w-full mt-4 mx-auto border border-gray-200 bg-gray-50">
                <div class="bg-white">
                    <label for="revTitle"></label>
                    <input type="text" id="revTitle" name="revTitle" class="w-full text-sm text-gray-800 bg-white border-0 focus:ring-blue-500" placeholder="제목을 입력해주세요" required>
                </div>
            </div>
            <div class="w-full mx-auto mt-4">
                <label for="revContent"></label>
                <textarea id="revContent" name="revContent" rows="12" class="w-full text-sm text-gray-900 bg-white border border-gray-300 focus:ring-blue-500 focus:border-blue-500" placeholder="내용을 입력해주세요..." required></textarea>
            </div>
            <div class="w-full mx-auto mt-4">
                <input class="w-full text-sm text-gray-900 border border-gray-300 bg-white focus:outline-none" id="upFile" name="upFile" type="file" accept="image/*">
                <p class="mt-1 text-sm text-gray-500">PNG, JPG 등 이미지 파일 (MAX 10mb 1024 * 1024)</p>
            </div>
            <div class="w-full mx-auto mt-4 text-right">
                <button type="submit"
                        class="w-32 h-16 text-sm font-medium text-center text-white bg-blue-700 rounded-lg focus:ring-4 focus:ring-blue-200 hover:bg-blue-800">
                    작성완료
                </button>
            </div>
        </div>
    </form>
</div>

<script src="${pageContext.request.contextPath}/js/review/reviewInsert.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>