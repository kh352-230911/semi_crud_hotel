<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<div class="p-8">
    <div class="bg-orange-50 p-4 rounded-lg shadow-xl py-8 my-15">
        <h4 class="text-3xl font-bold text-gray-800 tracking-widest uppercase text-center">1:1문의 목록</h4>
        <p class="text-center text-gray-600 text-sm mt-2">Here is a list of some questions to ask the administrator</p>
        <div class="space-y-12 px-15 xl:px-16 mt-12">
            <div class="mt-4 flex">
                <div>
                    <c:forEach items="${askVos}" var="ask" varStatus="vs">
                        <c:if test="${fn:length(ask.askAnswers) == 0}">
                            <!-- 답변이 없는 경우에만 다음 내용을 표시 -->
                            <div class="p-4 mb-4 text-sm text-black rounded-lg bg-orange-100 dark:bg-gray-800 dark:text-yellow-300" role="alert">
                                제목 : ${ask.askTitle}
                            </div>
                            <div class="p-4 mb-4 text-sm text-black rounded-lg bg-orange-200 dark:bg-gray-800 dark:text-yellow-300" role="alert">
                                작성자 : ${ask.askId}
                            </div>

                            <div class="mb-10 flex items-center h-16 border-l-4 border-orange-900">
                                <span class="text-4xl text-orange-900 px-4">Q.</span>
                                <div class="flex items-center h-16">
                                    <span class="text-lg text-orange-900 font-bold">${ask.askContent}</span>
                                </div>

                                <button type="button" class="ml-20 px-3 py-2 text-xs font-medium text-center inline-flex items-center text-white bg-amber-900 rounded-lg hover:bg-orange-200 focus:ring-4 focus:outline-none focus:bg-amber-900 dark:bg-blue-600 dark:hover:bg-orange-200 dark:focus:ring-blue-800"/>
                                    <svg class="w-3 h-3 text-white me-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 16">
                                        <path d="m10.036 8.278 9.258-7.79A1.979 1.979 0 0 0 18 0H2A1.987 1.987 0 0 0 .641.541l9.395 7.737Z"/>
                                        <path d="M11.241 9.817c-.36.275-.801.425-1.255.427-.428 0-.845-.138-1.187-.395L0 2.6V14a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V2.5l-8.759 7.317Z"/>
                                    </svg>
                                <a href="javascript:void(0);" onclick="toggleCommentForm(${vs.index});" class="ml-auto">답변하기</a>
                            </div>

                            <div class="border-gray-200	border-dotted border-2 border-indigo-800 ..."></div>

                            <div id="commentForm_${vs.index}" style="display: none;" >
                                <form method="post" action="${pageContext.request.contextPath}/manager/processAnswer">
                                    <input type="hidden" name="managerNum" value="${loginManager.managerNum}"/>
                                    <input type="hidden" name="askNum" value="${ask.askNum}" />
                                    <div class="w-full mb-4 border border-gray-200 rounded-lg bg-gray-50">
                                        <div class="px-4 py-2 bg-white rounded-t-lg">
                                            <label for="content" class="sr-only">답변 작성하기</label>
                                            <textarea id="content" rows="4" name="content" class="resize-none w-full px-0 text-sm text-gray-900 bg-white border-0" placeholder="답변을 작성하세요" required></textarea>
                                        </div>
                                        <div class="flex items-center justify-end px-3 py-2 border-t">
                                            <button type="submit" class="inline-flex items-center py-2.5 px-4 text-xs font-medium text-center text-white bg-amber-900 rounded-lg focus:ring-4 focus:ring-blue-200 hover:bg-orange-200	">
                                                등록
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <br>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function toggleCommentForm(index) {
        const commentForm = document.getElementById("commentForm_" + index);
        commentForm.style.display = (commentForm.style.display === "none") ? "block" : "none";
    }
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
