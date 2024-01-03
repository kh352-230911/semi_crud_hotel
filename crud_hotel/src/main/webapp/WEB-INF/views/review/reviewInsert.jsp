<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<div class="container bg-orange-100 mx-auto mt-8 mb-16">
    <form name="reviewInsertFrm" method="post" enctype="multipart/form-data">
        <div class="w-9/12 mt-8 mx-auto border border-gray-200 bg-gray-50">
            <div class="bg-white">
                <label for="title"></label>
                <input type="text" id="title" name="title" class="w-full text-sm text-gray-800 bg-white border-0 focus:ring-blue-500" placeholder="제목을 입력해주세요" required>
            </div>
        </div>
        <div class="w-9/12 mx-auto mt-4">
            <label for="content"></label>
            <textarea id="content" rows="12" class="w-full text-sm text-gray-900 bg-white border border-gray-300 focus:ring-blue-500 focus:border-blue-500" placeholder="내용을 입력해주세요..." required></textarea>
        </div>
        <div class="w-9/12 mx-auto mt-4">
            <input class="w-full text-sm text-gray-900 border border-gray-300 bg-white focus:outline-none" id="file_input" type="file">
            <p class="mt-1 text-sm text-gray-500">PNG, JPG 등 이미지 파일 (MAX 10mb 1024 * 1024)</p>
        </div>
        <button type="submit" id="reviewSubmit" class="w-32 h-16 text-sm font-medium text-center text-white bg-blue-700 rounded-lg focus:ring-4 focus:ring-blue-200 hover:bg-blue-800 mx-auto">
            작성완료
        </button>
    </form>
</div>
<script src="${pageContext.request.contextPath}/js/review/reviewInsert.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>