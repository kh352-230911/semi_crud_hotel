<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<section class="bg-orange-50">
<div class="flex flex-col items-center justify-center px-6 py-8 mx-auto lg:py-0">
    <div class="w-full bg-white rounded-lg shadow my-4 sm:max-w-md xl:p-0">
        <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
            <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl">
                My
            </h1>
            <form name="memberUpdateFrm" action="${pageContext.request.contextPath}/member/memberUpdate" method="post" class="space-y-4 md:space-y-6">
                <div>
                    <label for="id" class="block mb-2 text-sm font-medium text-gray-900 after:content-['*'] after:ml-0.5 after:text-red-500">Id</label>
                    <input type="text" name="id" id="id" value="${loginMember.memberId}" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" readonly required>
                </div>
                <div>
                    <label for="name" class="block mb-2 text-sm font-medium text-gray-900 after:content-['*'] after:ml-0.5 after:text-red-500">Name</label>
                    <input type="text" name="name" id="name"  value="${loginMember.memberName}" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" required>
                </div>
                <div>
                    <label for="email" class="block mb-2 text-sm font-medium text-gray-900 after:content-['*'] after:ml-0.5 after:text-red-500">Email</label>
                    <input type="text" name="email" id="email" value="${loginMember.memberEmail}" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" placeholder="name@company.com" required>
                </div>
                <div>
                    <label for="phone" class="block mb-2 text-sm font-medium text-gray-900 after:content-['*'] after:ml-0.5 after:text-red-500">Phone</label>
                    <input type="text" name="phone" id="phone" value="${loginMember.memberPhone}" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" placeholder="(-) 없이 입력하세요." required>
                </div>

                <button type="button" onclick="location.href = '${pageContext.request.contextPath}/member/updatePassword';" class="text-black w-full bg-amber-200 hover:bg-amber-300 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">비밀번호 변경</button>
                <button type="submit" class="text-black w-full bg-orange-200 hover:bg-orange-300 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">저장</button>

            </form>
        </div>
    </div>
</div>
</section>

<script src="${pageContext.request.contextPath}js/memberDetail.js"></script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>