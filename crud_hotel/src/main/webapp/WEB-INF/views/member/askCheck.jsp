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
                        <div class="p-4 mb-4 text-sm text-black rounded-lg bg-orange-100 dark:bg-gray-800 dark:text-yellow-300" role="alert">
                            <span class="font-normal"></span>제목 :  ${ask.askTitle}
                        </div>
                        <div class="flex items-center h-16 border-l-4 border-orange-900">
                            <span class="text-4xl text-orange-900 px-4">Q.</span>
                            <div class="flex items-center h-16 ">
                                <span class="text-lg text-orange-900 font-bold">${ask.askContent}</span>
                            </div>
                        </div>
                    <c:forEach items="${ask.askAnswers}" var="ans" varStatus="vs">
                        <div class="flex mb-10 items-center h-16 border-l-4 border-gray-400">
                            <span class="text-4xl text-gray-400 px-4">A.</span>
                            <div class="flex items-center py-2">
                                <span class="text-gray-500">${ans.ansContent}</span>
                            </div>
                        </div>

                        <div class="border-gray-200 m-10 border-dotted border-2 border-indigo-800 ..."></div>
                    </c:forEach>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
