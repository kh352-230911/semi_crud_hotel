<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<section>
    <form class="" method="post">
        <div class="w-full flex justify-center items-start bg-white">
            <div class="w-[1280px] h-[720px] relative bg-white">
                <div class="w-[678px] h-[391px] left-[224px] top-[173px] absolute bg-orange-50"></div>
                <div class="left-[224px] top-[149px] absolute text-black text-xl font-normal font-['Inter']">Q&A</div>
                <div class="w-24 h-[356px] left-[245px] top-[188px] absolute bg-stone-200"></div>
                <%-- 아이디 --%>
                <div class="w-[204px] h-6 left-[362px] top-[207px] absolute">
                    <input type="text" id="askId" name="askId" value="${loginMember.memberId}" required readonly class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white">
                </div>
                <%-- 문의유형 --%>
                <div class="w-[204px] h-[4rem] left-[362px] top-[255px] absolute">
                    <label for="askCase" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"></label>
                    <select id="askCase" name="askCase" required class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white">
                        <option>문의유형</option>
                        <option value="객실문의">객실문의</option>
                        <option value="예약문의">예약문의</option>
                        <option value="결제문의">결제문의</option>
                        <option value="기타문의">기타문의</option>
                    </select>
                </div>

                <%-- 제목 --%>
                <div class="w-[503px] h-6 left-[362px] top-[327px] absolute">
                    <input type="text" name="askTitle" id="askTitle" required class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white">
                </div>
                <%-- 내용 --%>
                <div class="w-[503px] h-[6rem] left-[362px] top-[380px] absolute">
                    <label for="askContent" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"></label>
                    <textarea id="askContent" name="askContent" required rows="4" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Your message...."></textarea>
                </div>

                <div class="w-[82px] h-4 left-[258px] top-[327px] absolute text-black text-[15px] font-normal font-['Inter']">제목</div>
                <div class="w-[82px] h-4 left-[259px] top-[215px] absolute text-black text-[15px] font-normal font-['Inter']">회원아이디</div>
                <div class="w-[82px] h-4 left-[259px] top-[264px] absolute text-black text-[15px] font-normal font-['Inter']">질문유형</div>
                <div class="w-[82px] h-4 left-[258px] top-[380px] absolute text-black text-[15px] font-normal font-['Inter']">내용</div>

                <button type="submit" class="text-white w-[503px] h-[29px] px-[104px] py-[11px] left-[362px] top-[509px] absolute bg-stone-700 justify-center items-center gap-2.5 inline-flex rounded-sm hover:bg-orange-200">
                    등록
                </button>
            </div>
        </div>
    </form>
</section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>