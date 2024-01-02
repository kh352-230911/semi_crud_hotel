<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <div class="container m-auto">
        <div class="flex justify-start">
            <h1 class="font-bold text-2xl mt-8">리뷰 게시판</h1>
        </div>
        <div class="flex justify-end mt-8">
            <button
                type="button"
                class="text-white bg-black">리뷰 작성</button>
        </div>
        <table class="w-full text-sm m-auto mt-4">
            <thead class="text-xs text-gray-700 bg-gray-50 text-center">
                <tr class="border">
                    <th scope="col" class="px-3 py-1 border">번호</th>
                    <th scope="col" class="px-7 py-1 border">아이디</th>
                    <th scope="col" class="px-5 py-1 border">방번호</th>
                    <th scope="col" class="px-12 py-1 border">제목</th>
                    <th scope="col" class="px-7 py-1 border">작성일</th>
                    <th scope="col" class="px-6 py-1 border">첨부파일</th>
                    <th scope="col" class="px-6 py-1 border">조회수</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${reviews}" var="review" varStatus="vs">
                    <tr class="border">
                        <th scope="row" class="font-medium text-center">${review.revNum}</th>
                        <td class="px-7 py-1 text-center">${review.revId}</td>
                        <td class="px-5 py-1 text-center">${review.revRoomNum}</td>
                        <td class="px-12 py-1">${review.revTitle}</td>
                        <td class="px-7 py-1 text-center">
                            <fmt:parseDate value="${review.revDate}" pattern="yyyy-mm-dd'T'HH:mm" var="revDate"/>
                            <fmt:formatDate value="${revDate}" pattern="yy/MM/dd"/>
                        </td>
                        <td class="px-6 py-1 text-center"><img class="w-[16px]" src="../images/file-icon.png" alt=""></td>
                        <td class="px-6 py-1 text-center">33</td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
    </div>
    <div class="flex justify-center mt-6">
        <nav aria-label="Page navigation">
            <ul class="my-8 flex items-center -space-x-px h-8 text-sm">
                ${pagebar}
            </ul>
        </nav>
    </div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>