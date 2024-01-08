<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<div class="container bg-orange-100 mx-auto mt-8 mb-16">
    <form name="reviewUpdateFrm" method="post" enctype="multipart/form-data">
        <div class="w-9/12 flex-wrap mx-auto">
            <input type="hidden" id="revDate" name="revDate" value="${review.revDate}">
            <input type="hidden" id="revNum" name="revNum" value="${review.revNum}">
            <div class="w-1/4 mt-8 border border-gray-200 bg-gray-200">
                <label for="revId">작성자 : ${review.revId}</label>
                <input type="hidden" id="revId" name="revId" value="${review.revId}">
            </div>
            <div class="w-4/12 mt-4 border border-gray-200 bg-gray-50">
                <div class="bg-white">
                    <label for="revRoomNum"></label>
                    <input type="text" id="revRoomNum" name="revRoomNum"
                           class="w-full text-sm text-gray-800 bg-white border-0 focus:ring-blue-500"
                           placeholder="방 번호를 입력해주세요"
                           value="${review.revRoomNum}"
                           required>
                </div>
            </div>
            <div class="w-full mt-4">
                <label for="revScore">리뷰 점수 선택 : </label>
                <select id="revScore" name="revScore" class="ml-4 w-1/8 border-0" required>
                    <option value="1" ${review.revScore == 1 ? 'selected' : ''}>1</option>
                    <option value="2" ${review.revScore == 2 ? 'selected' : ''}>2</option>
                    <option value="3" ${review.revScore == 3 ? 'selected' : ''}>3</option>
                    <option value="4" ${review.revScore == 4 ? 'selected' : ''}>4</option>
                    <option value="5" ${review.revScore == 5 ? 'selected' : ''}>5</option>
                </select>
            </div>
            <div class="w-full mt-4 mx-auto border border-gray-200 bg-gray-50">
                <div class="bg-white">
                    <label for="revTitle"></label>
                    <input type="text" id="revTitle" name="revTitle"
                           class="w-full text-sm text-gray-800 bg-white border-0 focus:ring-blue-500"
                           placeholder="제목을 입력해주세요"
                           value="${review.revTitle}"
                           required>
                </div>
            </div>
            <div class="w-full mx-auto mt-4">
                <label for="revContent"></label>
                <textarea id="revContent" name="revContent" rows="12"
                          class="w-full text-sm text-gray-900 bg-white border border-gray-300 focus:ring-blue-500 focus:border-blue-500"
                          placeholder="내용을 입력해주세요..."
                          required>${review.revContent}</textarea>
            </div>
            <div class="w-full mx-auto mt-4">
                <input class="w-full text-sm text-gray-900 border border-gray-300 bg-white focus:outline-none" id="upFile" name="upFile" type="file" accept="image/*">
                <p class="mt-1 text-sm text-gray-500">PNG, JPG 등 이미지 파일 (MAX 10mb 1024 * 1024)</p>
            </div>
            <div class="w-full mx-auto mt-4">
                <c:forEach items="${review.reviewPictures}" var="reviewPicture" varStatus="vs">
                    <p>삭제할 첨부파일은 체크해주세요</p>
                    <label for="delFile${vs.count}">${reviewPicture.originalFilename}</label>
                    <input type="checkbox" name="delFile" id="delFile${vs.count}" value="${reviewPicture.revNum}">
                    <br>
                </c:forEach>
            </div>
            <div class="w-full mx-auto mt-4 text-right">
                <button type="submit"
                        class="w-32 h-16 text-sm font-medium text-center text-white bg-amber-900 rounded-lg focus:ring-4 focus:ring-blue-200 hover:bg-orange-200">
                    수정완료
                </button>
            </div>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath}/js/review/reviewUpdate.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>