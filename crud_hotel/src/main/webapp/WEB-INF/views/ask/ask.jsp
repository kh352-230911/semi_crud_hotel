<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <div class="container m-auto">
        <div class="flex justify-start mt-8">
            <h1 class="text-xl font-bold w-9/12 m-auto">Q&A</h1>
        </div>
        <form class="w-9/12 bg-orange-100 mt-8 mr-auto ml-auto" method="post">
            <table class=" w-9/12 bg-orange-200 m-auto">
                <thead></thead>
                <tbody>
                    <tr>
                        <td>질문유형</td>
                        <td>
                            <label for="askCase"></label>
                            <select name="askCase" id="askCase" class="w-3/5">
                                <option value="select">문의유형을 선택해주세요</option>
                                <option value="객실문의">객실문의</option>
                                <option value="예약문의">예약문의</option>
                                <option value="결제문의">결제문의</option>
                                <option value="기타문의">기타문의</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>아이디</td>
                        <td>
                            <label for="askId"></label>
                            <input type="text" id="askId" name="askId" value="${loginMember.memberId}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>제목</td>
                            <td>
                                <label for="askTitle"></label>
                                <input type="text" name="askTitle" id="askTitle" class="w-full" placeholder="제목">
                            </td>
                    </tr>
                    <tr class="relative">
                        <td class="absolute top-0 left-0">내용</td>
                        <td>
                            <label for="askContent"></label>
                            <input type="text" name="askContent" id="askContent" class="pb-32 w-full" placeholder="내용">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="text-center bg-yellow-900">
                            <button type="submit" class="w-full h-8 text-center">제출</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>