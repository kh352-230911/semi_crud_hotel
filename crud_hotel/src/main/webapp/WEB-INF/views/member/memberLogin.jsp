
<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <!-- login -->
    <form class="space-y-6" method="POST" name="loginFrm">

        <main class="mx-auto flex py-20 w-full items-center justify-center bg-orange-50 text-white">
            <!-- component -->
            <section class="flex w-[30rem] bg-orange-50 flex-col space-y-10">
                <div class="text-center text-4xl font-medium text-black">Log In</div>

                <div class="w-full transform border-b-2 bg-transparent text-lg duration-300 focus-within:border-indigo-500">
                    <input type="text"  id="id" name="id"
                           placeholder="Email or Username" autocomplete="id"
                           class="w-full border-none bg-transparent outline-none placeholder:italic focus:outline-none text-black"/>
                </div>
                <div class="w-full transform border-b-2 bg-transparent text-lg duration-300 focus-within:border-indigo-500">
                    <input type="password" id="password" name="password"
                           placeholder="Password" autocomplete="password"
                           class="w-full border-none bg-transparent outline-none placeholder:italic focus:outline-none text-black"/>
                </div>
                <div class="flex items-center">
                    <input id="saveId" name="saveId" type="checkbox" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500">
                    <label for="saveId" class="ms-2 text-sm font-medium text-gray-700">아이디 저장</label>
                </div>
                <button type="submit" class="transform rounded-sm bg-neutral-300 py-2 font-bold text-black duration-300 hover:bg-orange-200">
                    LOG IN
                </button>
            </section>
        </main>
    </form>



<script src="${pageContext.request.contextPath}/js/member/memberLogin.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

