<%--
  Created by IntelliJ IDEA.
  User: user1
  Date: 2024-01-04
  Time: 오후 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<section class="bg-orange-50">
<div class="flex min-h-full flex-col justify-center px-6 py-12 lg:px-8">
    <div class="my-10 sm:mx-auto sm:w-full sm:max-w-sm">
        <h1 class="mb-6 text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl">
            비밀번호 변경
        </h1>
        <form name="memberPasswordUpdateFrm" class="space-y-6" method="POST">
            <div>
                <label for="oldPassword" class="block text-sm font-medium leading-6 text-gray-900">현재 비밀번호</label>
                <div class="mt-2">
                    <input id="oldPassword" name="oldPassword" type="password" value="" size=50 required class="px-4 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                </div>
            </div>
            <div>
                <div class="flex items-center justify-between">
                    <label for="newPassword" class="block text-sm font-medium leading-6 text-gray-900">변경할 비밀번호</label>
                </div>
                <div class="mt-2">
                    <input id="newPassword" name="newPassword" type="password" value="" size=50 required class="px-4 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                </div>
            </div>
            <div>
                <div class="flex items-center justify-between">
                    <label for="newPasswordConfirmation" class="block text-sm font-medium leading-6 text-gray-900">비밀번호 확인</label>
                </div>
                <div class="mt-2">
                    <input id="newPasswordConfirmation" type="password" value="" required size=50 class="px-4 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                </div>
            </div>

            <button type="submit" class="text-black w-full bg-orange-200 hover:bg-orange-300 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">저장</button>

        </form>
    </div>
</div>
</section>

<script src="${pageContext.request.contextPath}/js/manager/updatePassword.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
