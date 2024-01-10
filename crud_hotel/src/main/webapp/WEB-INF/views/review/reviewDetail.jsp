<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<div class="w-9/12 mx-auto mt-4 mb-16 bg-white border border-gray-200 rounded-lg shadow">
    <div class="px-5 pt-5">
            <h3 class="text-xl font-semibold text-gray-900">${fn:escapeXml(review.revTitle)}</h3>
        <div class="flex justify-between">
            <h5 class="font-semibold text-gray-900 mt-4">작성자 : ${review.revId}</h5>
            <h5 class="text-gray-400 mt-4">작성일 :
                <fmt:parseDate value="${review.revDate}" pattern="yyyy-mm-dd'T'HH:mm" var="revDate"/>
                <fmt:formatDate value="${revDate}" pattern="yy/MM/dd"/>
            </h5>
        </div>
        <p class="mt-4">방 번호 : ${review.revRoomNum}</p>
        <div class="flex items-center mt-2.5 mb-5">
            <div class="flex items-center space-x-1 rtl:space-x-reverse">
                <p>리뷰점수 : </p>
                <c:if test="${review.revScore == 5}">
                    <div class="flex items-center text-yellow-300">
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                        <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                    </div>
                </c:if>
                <c:if test="${review.revScore == 4}">
                    <div class="flex items-center text-yellow-300">
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                    </div>
                </c:if>
                <c:if test="${review.revScore == 3}">
                    <div class="flex items-center text-yellow-300">
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                    </div>
                </c:if>
                <c:if test="${review.revScore == 2}">
                    <div class="flex items-center text-yellow-300">
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                    </div>
                </c:if>
                <c:if test="${review.revScore == 1}">
                    <div class="flex items-center text-yellow-300">
                        <svg class="w-5 h-5 me-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                        </svg>
                    </div>
                </c:if>
            </div>
        </div>
        <div>
            <c:forEach items="${review.reviewPictures}" var="reviewPicture">
                <img src="${pageContext.request.contextPath}/upload/review/${reviewPicture.renamedFilename}">
            </c:forEach>
            <p>${review.revContent}</p>
            <br><br><br><br><br><br><br><br><br><br><br><br><br>
            <c:forEach items="${review.reviewPictures}" var="reviewPicture">
                <div class="w-full mt-4 mb-4 bg-white border border-gray-200 rounded-lg">
                    첨부된 이미지 파일 :
                        <a href="${pageContext.request.contextPath}/upload/review/${reviewPicture.renamedFilename}"
                           download="${reviewPicture.originalFilename}" class="hover:underline">
                                ${reviewPicture.originalFilename}
                        </a>
                </div>
            </c:forEach>
        </div>

        <div class="w-full flex justify-end">
            <c:if test="${(loginMember.memberId == review.revId) || loginManager != null}">
                <button type="button"
                        onclick="location.href = '${pageContext.request.contextPath}/review/reviewUpdate?revNum=${review.revNum}';"
                        class="mr-4 text-white bg-amber-900 hover:bg-orange-200 focus:outline-none focus:bg-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 text-center">
                    수정
                </button>
                <button type="button" onclick="confirm('리뷰를 삭제하시겠습니까?') && document.reviewDeleteFrm.submit()"
                        class="mr-4 text-white bg-amber-900 hover:bg-orange-200 focus:outline-none focus:bg-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 text-center">
                    삭제
                </button>
            </c:if>
            <form
                action="${pageContext.request.contextPath}/review/reviewDelete"
                method="post"
                name="reviewDeleteFrm">
                <input type="hidden" name="revNum" value="${review.revNum}">
                <c:forEach items="${review.reviewPictures}" var="reviewPicture" varStatus="vs">
                    <label for="delFile${vs.count}"></label>
                    <input type="hidden" name="delFile" id="delFile${vs.count}" value="${reviewPicture.revNum}">
                </c:forEach>
            </form>
<%--            <c:if test="${loginMember != null || loginManager != null}">--%>
<%--                <button type="button"--%>
<%--                        class="mr-4 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">--%>
<%--                    좋아요--%>
<%--                </button>--%>
<%--                <button type="button"--%>
<%--                        class="text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">--%>
<%--                    신고하기--%>
<%--                </button>--%>
<%--            </c:if>--%>
        </div>
    </div>
    <!-- 댓글 테이블 -->
    <div class="w-full mt-16 bg-white">
        <h3 class="text-xl font-semibold text-gray-900 ml-4 my-4">댓글</h3>
        <c:if test="${empty review.comments}">
            <p class="px-4 py-4 w-2/12">댓글이 없습니다. 😮</p>
        </c:if>

        <table class="w-full mx-auto text-gray-800">
            <tbody>
            <c:forEach items="${review.comments}" var="comment" varStatus="vs">
                <tr class="border-b">
                    <th class="text-left px-4 py-4 w-2/12 border-b">${comment.comId}</th>
                    <td class="text-left w-4/6 px-4 py-4">
                        <p class="text-gray-600 pl-4">${comment.comContent}</p>
                    </td>
                    <td class="text-gray-400 px-4 py-4 text-right">
                        <fmt:parseDate value="${comment.comDate}" pattern="yyyy-mm-dd'T'HH:mm" var="comDate"/>
                        <fmt:formatDate value="${comDate}" pattern="yy/MM/dd"/>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- 댓글작성 조건 검사 -->
<c:if test="${(loginMember.memberId != null) || loginManager != null}">
    <div class="w-9/12 mx-auto mb-16 bg-white">
        <!-- 댓글작성 폼 -->
        <form name="reviewCommentCreateFrm" action="${pageContext.request.contextPath}/review/reviewCommentCreate" method="post">
            <input type="hidden" name="comId" id="comId" value="${loginMember.memberId}">
            <input type="hidden" name="comNum" id="comNum" value="${review.revNum}">
            <label for="comContent"></label>
            <h3 class="block mb-2 text-xl text-gray-900 dark:text-white">댓글 내용</h3>
            <textarea id="comContent" name="comContent" rows="4"
                      class="block w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300
                   focus:ring-blue-500 focus:border-blue-500"
                      placeholder="댓글내용을 작성해주세요."></textarea>
            <div class="mt-4 flax w-full justify-end text-right">
                <button type="submit"
                        class="text-white bg-amber-900 hover:bg-orange-200 focus:outline-none focus:bg-orange-200 font-medium rounded-lg text-sm px-5 py-2.5 text-center">
                    댓글 작성완료
                </button>
            </div>
        </form>
    </div>
</c:if>


<script src="${pageContext.request.contextPath}/js/review/reviewDetail.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>