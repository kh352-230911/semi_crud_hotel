<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<section class="bg-orange-50">
<div class="flex py-50 min-h-full flex-col justify-center px-6 py-12 lg:px-8">
    <div class="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
        <h1 class="mb-6 text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl">
            비밀번호 변경
        </h1>
        <form name="updatePasswordFrm" class="space-y-6" method="POST">
            <div>
                <label for="oldPwd" class="block text-sm font-medium leading-6 text-gray-900">현재 비밀번호</label>
                <div class="mt-2">
                    <input id="oldPwd" name="oldPwd" size=50 type="password" required class="px-4 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                </div>
            </div>
            <div>
                <div class="flex items-center justify-between">
                    <label for="newPwd" class="block text-sm font-medium leading-6 text-gray-900">변경할 비밀번호</label>
                </div>
                <div class="mt-2">
                    <input id="newPwd" name="newPwd" size=50 type="password" required class="px-4 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                </div>
            </div>
            <div>
                <div class="flex items-center justify-between">
                    <label for="newPasswordConfirmation" class="block text-sm font-medium leading-6 text-gray-900">변경할 비밀번호 확인</label>
                </div>
                <div class="mt-2">
                    <input id="newPasswordConfirmation" size=50 type="password" required class="px-4 block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                </div>
            </div>
                <button type="submit" class="text-black w-full bg-orange-200 hover:bg-orange-300 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">저장</button>
        </form>
    </div>
</div>
</section>

<script src="${pageContext.request.contextPath}/js/member/updatePassword.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
