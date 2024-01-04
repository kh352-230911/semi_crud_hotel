<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<%--<div class="relative my-20 overflow-x-auto shadow-md sm:rounded-lg w-9/12 mx-auto">--%>
<%--    <table class="w-full text-sm text-center text-gray-500 dark:text-gray-400 mt-12">--%>
<%--        <thead class="text-xs text-gray-700 uppercase bg-orange-100 dark:bg-gray-700 dark:text-gray-400">--%>
<%--        <tr>--%>
<%--            <th scope="col" class="py-3 w-24">--%>
<%--                문의 번호--%>
<%--            </th>--%>
<%--            <th scope="col" class="py-3">--%>
<%--                문의유형--%>
<%--            </th>--%>
<%--            <th scope="col" class="py-3">--%>
<%--                문의제목--%>
<%--            </th>--%>
<%--            <th scope="col" class="py-3">--%>
<%--                문의내용--%>
<%--            </th>--%>
<%--            <th scope="col" class="py-3">--%>
<%--                문의한 날짜--%>
<%--            </th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach items="${asks}" var="ask" varStatus="vs">--%>
<%--            <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-orange-50 even:dark:bg-gray-800 border-b dark:border-gray-700">--%>
<%--                <th scope="row" class="font-medium text-gray-900 whitespace-nowrap dark:text-white text-center">--%>
<%--                        ${ask.askNum}</th>--%>
<%--                <td class="py-4">--%>
<%--                        ${ask.askCase}--%>
<%--                </td>--%>
<%--                <td class="py-4">--%>
<%--                    <a href="${pageContext.request.contextPath}/member/askDetail?askNum=${ask.askNum}">${fn:escapeXml(ask.askTitle)}</a>--%>
<%--                </td>--%>
<%--                <td class="py-4">--%>
<%--                        ${ask.askContent}--%>
<%--                </td>--%>
<%--                <td class="py-4">--%>
<%--                    <fmt:parseDate value="${ask.askDate}" pattern="yyyy-mm-dd'T'HH:mm" var="askDate"/>--%>
<%--                    <fmt:formatDate value="${askDate}" pattern="yy/MM/dd"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--    <h2 class="text-bold text-xl absolute top-0 left-4">내 1:1문의 목록</h2>--%>
<%--</div>--%>
<div class="p-8">

    <div class="bg-white p-4 rounded-lg shadow-xl py-8 mt-12">
        <h4 class="text-4xl font-bold text-gray-800 tracking-widest uppercase text-center">내 1:1문의 목록</h4>
        <p class="text-center text-gray-600 text-sm mt-2">Here are some of the frequently asked questions</p>
        <div class="space-y-12 px-2 xl:px-16 mt-12">
            <div class="mt-4 flex">
                <div>
                    <div class="flex items-center h-16 border-l-4 border-blue-600">
                        <span class="text-4xl text-blue-600 px-4">Q.</span>
                    </div>
                    <div class="flex items-center h-16 border-l-4 border-gray-400">
                        <span class="text-4xl text-gray-400 px-4">A.</span>
                    </div>
                </div>
                <c:forEach items="${asks}" var="ask" varStatus="vs">
                <div>
                    <div class="flex items-center h-16">
                        <span class="text-lg text-blue-600 font-bold">${ask.askContent}?</span>
                    </div>
                    <div class="flex items-center py-2">
                        <span class="text-gray-500">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae, dignissimos. Neque eos, dignissimos provident reiciendis debitis repudiandae commodi perferendis et itaque, similique fugiat cumque impedit iusto vitae dolorum. Nostrum, fugit!</span>

                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
