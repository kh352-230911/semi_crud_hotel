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
<%--                            아이디: ${ask.askId}--%>
                            <div class="p-4 mb-4 text-sm text-black rounded-lg bg-orange-100 dark:bg-gray-800 dark:text-yellow-300" role="alert">
                                제목 :  ${ask.askTitle}
                            </div>
                            <div class="flex items-center h-16 border-l-4 border-orange-900">
                                <span class="text-4xl text-orange-900 px-4">Q.</span>
                                <div class="flex items-center h-16">
                                    <span class="text-lg text-orange-900 font-bold">${ask.askContent}</span>
                                </div>
                            </div>
                            <form action="${pageContext.request.contextPath}/manager/managerAskAnswer" method="post">
                                <input type="hidden" name="managerId" value="${loginManager.managerId}" />
                                <input type="hidden" name="askNum" value="${ask.askNum}" />
                                <input type="submit" value="답변하기" />
                            </form>
                            <br>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
