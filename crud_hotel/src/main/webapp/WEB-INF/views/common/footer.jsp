
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
</main>

<style>
    /* Generic styling */
    * {
        box-sizing: border-box;
        font-family: "Lato", sans-serif;
        margin: 0;
        padding: 0;
    }
    ul {
        list-style: none;
        padding-left: 0;
    }
    footer {
        background-color: #555;
        color: #bbb;
        line-height: 1.5;
    }
    footer a {
        text-decoration: none;
        color: #eee;
    }
    a:hover {
        text-decoration: underline;
    }
    .ft-title {
        color: #fff;
        font-family: "Merriweather", serif;
        font-size: 1.375rem;
        padding-bottom: 0.625rem;
    }
    /* Sticks footer to bottom */
    body {
        display: flex;
        min-height: 100vh;
        flex-direction: column;
    }
    .container {
        flex: 1;
    }
    /* Footer main */
    .ft-main {
        padding: 1.25rem 1.875rem;
        display: flex;
        flex-wrap: wrap;
    }
    @media only screen and (min-width: 29.8125rem /* 477px */) {
        .ft-main {
            justify-content: space-evenly;
        }
    }
    @media only screen and (min-width: 77.5rem /* 1240px */) {
        .ft-main {
            justify-content: space-evenly;
        }
    }
    .ft-main-item {
        padding: 1.25rem;
        min-width: 12.5rem;
    }

    /* Footer main | Newsletter form */
    form {
        display: flex;
        flex-wrap: wrap;
    }
    input[type="email"] {
        border: 0;
        padding: 0.625rem;
        margin-top: 0.3125rem;
    }
    input[type="submit"] {
        background-color: #00d188;
        color: #fff;
        cursor: pointer;
        border: 0;
        padding: 0.625rem 0.9375rem;
        margin-top: 0.3125rem;
    }
    /* Footer social */
    .ft-social {
        padding: 0 1.875rem 1.25rem;
    }
    .ft-social-list {
        display: flex;
        justify-content: center;
        border-top: 1px #777 solid;
        padding-top: 1.25rem;
    }
    .ft-social-list li {
        margin: 0.5rem;
        font-size: 1.25rem;
    }
    /* Footer legal */
    .ft-legal {
        padding: 0.9375rem 1.875rem;
        background-color: #333;
    }
    .ft-legal-list {
        width: 100%;
        display: flex;
        flex-wrap: wrap;
    }
    .ft-legal-list li {
        margin: 0.125rem 0.625rem;
        white-space: nowrap;
    }
    /* one before the last child */
    .ft-legal-list li:nth-last-child(2) {
        flex: 1;
    }
     h4, h5, a{
         font-family: 'Diphylleia', serif;
         font-family: 'Grandiflora One', cursive;
         font-family: 'Nanum Myeongjo', serif;
     }
</style>

<!-- component -->
<link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">
<link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">

<footer class="relative bg-orange-100 pt-8 pb-6">
    <div class="container mx-auto px-4">
        <div class="flex flex-wrap text-left lg:text-left">
            <div class="w-full lg:w-6/12 px-4">
                <h4 class="text-3xl fonat-semibold text-blueGray-700">CRUD Hotel</h4>
                <h5 class="text-lg mt-0 mb-2 text-blueGray-600">
                    CRUD SEOUL is the first luxury landmark hotel representing Korea and is operated by the tallest landmark in Korea, All  hotel guest rooms offer panoramic views of Seoul, that will offer the ultimate experience for customers from all over the world and relax at the most prestigious refreshing zone  CRUD Hotel.
                </h5>
                <div class="mt-6 lg:mb-0 mb-6">
                    <button class="bg-white text-lightBlue-400 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2" type="button">
                        <i class="fab fa-twitter"></i></button><button class="bg-white text-lightBlue-600 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2" type="button">
                    <i class="fab fa-facebook-square"></i></button><button class="bg-white text-pink-400 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2" type="button">
                    <i class="fab fa-dribbble"></i></button><button class="bg-white text-blueGray-800 shadow-lg font-normal h-10 w-10 items-center justify-center align-center rounded-full outline-none focus:outline-none mr-2" type="button">
                    <i class="fab fa-github"></i>
                </button>
                </div>
            </div>
            <div class="w-full lg:w-6/12 px-4">
                <div class="flex flex-wrap items-top mb-6">
                    <div class="w-full lg:w-4/12 px-4 ml-auto">
                        <span class="block uppercase text-orange-800 text-sm font-semibold mb-2">호텔 안내</span>
                        <ul class="list-unstyled">
                            <li>
                                <a class="text-blueGray-600 hover:text-blueGray-800 font-semibold block pb-2 text-sm" href="#">호텔소개</a>
                            </li>
                            <li>
                                <a class="text-blueGray-600 hover:text-blueGray-800 font-semibold block pb-2 text-sm" href="#">객실</a>
                            </li>
                            <li>
                                <a class="text-blueGray-600 hover:text-blueGray-800 font-semibold block pb-2 text-sm" href="#">즐길거리</a>
                            </li>
                            <li>
                                <a class="text-blueGray-600 hover:text-blueGray-800 font-semibold block pb-2 text-sm" href="#">예약하기</a>
                            </li>
                        </ul>
                    </div>
                    <div class="w-full lg:w-4/12 px-4">
                        <span class="block uppercase text-orange-800 text-sm font-semibold mb-2">고객</span>
                        <ul class="list-unstyled">
                            <li>
                                <a class="text-blueGray-600 hover:text-blueGray-800 font-semibold block pb-2 text-sm" href="#">문의하기</a>
                            </li>
                            <li>
                                <a class="text-blueGray-600 hover:text-blueGray-800 font-semibold block pb-2 text-sm" href="#">리뷰</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <hr class="my-6 border-blueGray-300">
        <div class="flex flex-wrap items-center md:justify-between justify-center">
            <div class="w-full md:w-4/12 px-4 mx-auto text-center">
                <div class="text-sm text-blueGray-500 font-semibold py-1">
                    <span id="get-current-year">CRUD Hotel</span><a href="https://www.creative-tim.com/product/notus-js" class="text-blueGray-500 hover:text-gray-800" target="_blank">
                    <a href="https://www.creative-tim.com?ref=njs-profile" class="text-blueGray-500 hover:text-blueGray-800">48, Teheran-ro 14-gil, Gangnam-gu, Seoul, Republic of Korea</a>.
                </div>
            </div>
        </div>
    </div>
</footer>
<script>
    // 날짜 달력 적용
    var currentDateTime = new Date();
    var year = currentDateTime.getFullYear();
    var month = (currentDateTime.getMonth() + 1);
    var date = (currentDateTime.getDate() + 1);

    if (date < 10) {
        date = '0' + date;
    }
    if (month < 10) {
        month = '0' + month;
    }

    var dateTomorrow = year + "-" + month + "-" + date;
    var checkinElem = document.querySelector("#checkInDate");
    var checkoutElem = document.querySelector("#checkOutDate");

    checkinElem.setAttribute("min", dateTomorrow);

    checkinElem.onchange = function () {
        checkoutElem.setAttribute("min", this.value);
    }

    // radio 버튼 내용 변경 적용
    function updateButton(radio) {
        document.getElementById('dropdownRadioButton').innerText = radio.value;
    }
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/datepicker.min.js"></script>

