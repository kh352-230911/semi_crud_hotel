<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<form>
    <p class="text-sm font-light text-red-500">
        서비스를 그만 사용하고 싶으신가요? <a href="javascript:confirm('정말 탈퇴 하시겠습니까?💦') && document.memberDeleteFrm.submit();" class="font-medium text-red-600 hover:underline">여기서 회원탈퇴하세요😭</a>
    </p>
</form>


<form action="${pageContext.request.contextPath}/member/memberDelete" method="post" name="memberDeleteFrm">
</form>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>