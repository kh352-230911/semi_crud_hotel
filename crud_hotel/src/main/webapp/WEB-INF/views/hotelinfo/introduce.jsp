<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style>
    /* 전체 레이아웃을 위한 컨테이너 스타일 */
    .layout {
        display: flex; /* flexbox 레이아웃 사용 */
        margin-left: 100px; /* 기존 사이드바의 너비만큼 여백 설정 */
        margin-top: 100px;
    }

    /*!* 사이드바 스타일링 *!*/
    /*.sidebar {*/
    /*    width: 200px; !* 사이드바 너비 설정 *!*/
    /*    height: 200px;*/
    /*    background-color: #f9f9f9; !* 배경색 설정 *!*/
    /*    padding: 20px;*/
    /*    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1); !* 그림자 효과 추가 *!*/
    /*}*/

    /*!* 리스트 스타일 제거 *!*/
    /*.sidebar ul {*/
    /*    list-style-type: none;*/
    /*    padding: 0;*/
    /*    margin: 0; !* 추가된 부분 *!*/
    /*}*/

    /* 링크 스타일링 */
    .sidebar a {
        text-decoration: none;
        color: black;
        display: block;
        padding: 10px;
        border-bottom: 1px solid #ddd;
    }

    .sidebar a:hover {
        background-color: #e0e0e0;
    }

    /* 본문 스타일링 */
    .content {
        flex-grow: 1; /* 나머지 공간을 채우도록 설정 */
        box-sizing: border-box;
        padding-left: 40px;
        padding-bottom: 100px;
    }

    .content > section {
        /*margin: 0 auto;*/
        max-width: 800px; /* 섹션의 최대 너비를 설정할 수 있습니다 */
        background-color: white; /* 배경색을 흰색으로 설정 */
        padding: 20px; /* 내부 여백을 설정 */
        box-shadow: 0 0 10px rgba(0,0,0,0.1); /* 그림자 효과를 추가 */
        margin-bottom: 20px; /* 섹션과 섹션 사이의 간격 */

    }

    /* 필요한 경우, 추가 스타일링 */
    h2 {
        color: #333; /* 제목의 색상을 설정 */
        margin-bottom: 10px; /* 제목 아래 여백 */
    }

    p {
        line-height: 1.6; /* 문단의 줄 간격 */

    }
    span, p{
        font-family: 'Diphylleia', serif;
        font-family: 'Grandiflora One', cursive;
        font-family: 'Nanum Myeongjo', serif;
    }
</style>
<body>
<!-- 사이드바 메뉴 -->
    <div class="flex">
        <!-- 사이드바 메뉴 -->
        <div class="w-64 bg-yellow-50 p-5 space-y-4">
            <ul>
                <li><a href="${pageContext.request.contextPath}/hotelintroduce/introduce">
                    <p class="text-2xl font-bold text-orange-300 dark:text-orange-300">호텔 소개</p>
                </a></li>
                <br>
                <li><a href="${pageContext.request.contextPath}/hotelinfo/info">
                    <p class="text-2xl font-bold text-orange-300 dark:text-orange-300">호텔 정보</p>
                </a></li>
                <br>
                <li><a href="${pageContext.request.contextPath}/hotellocation/location">
                    <p class="text-2xl font-bold text-orange-300 dark:text-orange-300">호텔 위치</p>
                </a></li>
            </ul>
        </div>

        <div class=" container flex justify-between px-4 m-10">
            <article class=" px-4 rounded-lg  format format-sm sm:format-base lg:format-lg format-blue dark:format-invert">
                <div class="relative">
                    <div class="max-w-8xl mx-auto">

                        <h2 class=" mb-0 lg:mb-6 font-sans text-lg lg:text-3xl text-center lg:text-left font-bold leading-none tracking-tight text-gray-900   md:mx-auto">
                        <span class="relative inline-block">
                            <svg viewBox="0 0 52 24" fill="currentColor" class="absolute text-black -top-4 left-12 z-0 hidden w-32 -mt-8 -ml-20 text-blue-gray-100 lg:w-32 lg:-ml-28 lg:-mt-10 sm:block">
                                <defs>
                                    <pattern id="70326c9b-4a0f-429b-9c76-792941e326d5" x="0" y="0" width=".120" height=".30">
                                        <circle cx="1" cy="1" r="1"></circle>
                                    </pattern>
                                </defs>
                            </svg>
                            <span class="relative text-xl lg:text-3xl text-center"> CRUD Hotel </span>
                        </span>
                        </h2>
                    </div>

                    <div class="grid grid-flow-row gap-4 text-neutral-600 grid-cols-1 lg:grid-cols-3 xl:grid-cols-3">
                        <div class="shadow-2xl rounded-lg flex items-center"> <!-- flex와 items-center 추가 -->
                            <figure>
                                <img src="${pageContext.request.contextPath}/images/hotel%20out.webp" alt="" class="rounded w-full" title="EP 60" loading="lazy" width="900" height="600">
                            </figure>
                            <div class="bg-white p-6 rounded-b-lg flex-grow"> <!-- flex-grow 추가 -->
                                <h2 class="card-title text-sm text-left"> <!-- text-left으로 변경 -->
                                    서울 강남구 테헤란로의 중심에 위치한 CRUD Hotel은 호텔 경영 노하우와 서비스 경험을 기반으로 진정한 럭셔리를 만날 수 있는 True Hospitality를 선보입니다.
                                    <br>
                                    외관 및 객실 전면 리모델링을 통해 한국의 전통적인 아름다움을 현대적으로 재해석한 30개의 객실을 만나보실 수 있으며 탁 트인 통창으로 강남의 도심 전경을 한 자리에서 감상할 수 있습니다.
                                    <br>
                                    국내 5성 호텔 중 최대 규모와 최신 시설을 갖춘 고품격 프라이빗 수영장에서 휴양지에서의 휴식 같은 플로트를 즐길 수 있고, 도심속 휴가를 즐길수있습니다.
                                    <br>
                                    또한, 세계적인 레스토랑 어워드를 수상한 정통 일식부터 중식까지 5개의 레스토랑에서 세계의 다양한 맛을 각 분야 별 수석 셰프들의 노하우와 엄선된 식재료로 탄생한 맛과 서비스를 만나보실 수 있으며,
                                    전세계 비즈니스 여행객 모두에게 최적화된 서비스와 시설을 제공합니다.
                                </h2>
                                <div class="card-actions justify-end">
                                    <a href="" class="bg-g text-white px-4 py-1 rounded-md w-full block text-center">View More</a>
                                </div>
                            </div>
                        </div>
                        <div id="spm"></div>
                    </div>
                <div class="relative py-2  lg:py-16 ">
                    <div class="max-w-8xl   mx-auto  ">

                        <h2 class="  mb-0 lg:mb-6 font-sans text-lg lg:text-3xl text-center lg:text-left font-bold leading-none tracking-tight text-gray-900   md:mx-auto">
                        <span class="relative inline-block">
                            <svg viewBox="0 0 52 24" fill="currentColor" class="absolute text-black -top-4 left-12 z-0 hidden w-32 -mt-8 -ml-20 text-blue-gray-100 lg:w-32 lg:-ml-28 lg:-mt-10 sm:block">
                                <defs>
                                    <pattern id="70326c9b-4a0f-429b-9c76-792941e326d5" x="0" y="0" width=".135" height=".30">
                                        <circle cx="1" cy="1" r="1"></circle>
                                    </pattern>
                                </defs>
                            </svg>
                            <span class="relative text-xl lg:text-3xl text-center"> CRUD Hotel INFORMATION </span>
                        </span>
                        </h2>
                    </div>
                    <p class="pb-4 text-sm">
                        CRUD Hotel은 서울의 비즈니스와 문화의 중심지인 한국도심지와 근접해 있어
                        국제적인 비즈니스 여행객을 위한 최적의 조건을 갖추고 있습니다.
                    </p>
                    <div class="grid grid-flow-row gap-4 text-neutral-600 sm:grid-cols-1 md:grid-cols-3 lg:grid-cols-3 xl:grid-cols-3   ">

                        <div class=" shadow-2xl rounded-lg">
                            <figure>
                                <img src="${pageContext.request.contextPath}/images/hotel.jpg" alt="" class="rounded w-full" title="Introducing our EPIC specialized  " loading="lazy" width="600" height="400">
                            </figure>
                            <div class="bg-white pt-4 rounded-b-lg">
                                <h2 class="card-title text-sm text-center">호텔로비</h2>
                                <div class="card-actions justify-end">
                                    <a href="https://epicpadprinting.com/machines/special-purpose-machines/spm-for-printing-on-medical-counter-rings" class="bg-g text-white px-4 py-1 rounded-md block text-center"> Download </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
        </div>
    </div>
</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
