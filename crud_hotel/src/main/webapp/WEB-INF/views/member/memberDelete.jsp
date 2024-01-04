<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<section class="bg-orange-50">
    <div class="flex py-50 min-h-full flex-col justify-center px-6 py-12 lg:px-8">
            <div class="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
                <h1 class="mb-6 text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl">
                    회원탈퇴
                </h1>
                    <p class="text-sm mb-10 font-light text-black">
                        서비스를 그만 사용하고 싶으신가요?
                    </p>
                <button onclick="if(confirm('정말 회원탈퇴를 진행 하시겠습니까?')) { document.memberDeleteFrm.submit(); }" class="text-black w-full bg-orange-200 hover:bg-orange-300 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">
                    회원탈퇴
                </button>
            </div>
</section>


<form action="${pageContext.request.contextPath}/member/memberDelete" method="post" name="memberDeleteFrm">
</form>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>