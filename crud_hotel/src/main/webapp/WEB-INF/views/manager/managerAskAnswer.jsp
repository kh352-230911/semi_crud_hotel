<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<%--<form action="manager/processAnswer" method="post">--%>
<%--    <input type="hidden" name="askNum" value="${askNum}" />--%>
<%--    <textarea name="answer" rows="4" cols="50"></textarea>--%>
<%--    <input type="submit" value="답변 제출" />--%>
<%--</form>--%>

<form action="${pageContext.request.contextPath}/manager/processAnswer" class="max-w-sm mx-auto" method="post">
    <input type="hidden" name="askNum" value="${ask.askNum}" />
    <input type="hidden" name="managerId" value="${loginManager.managerId}" />
    <label for="message" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">답변</label>
    <textarea id="message" name="answer" rows="4" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"></textarea>
    <input type="submit" value="답변 제출" />
</form>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>