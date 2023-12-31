<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8" %>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }

    .top-banner {
        position: relative;
        display: flex;
        width: 100vw;
        height: 100vh;
        background: url(https://cdn.pixabay.com/photo/2017/03/09/06/30/pool-2128578_640.jpg)
        no-repeat center / cover;
    }

    .top-banner-overlay {
        display: flex;
        flex-direction: column;
        justify-content: center;
        width: 350px;
        padding: 20px;
        transition: all 0.7s;
        background: rgba(0, 0, 0, 0.6);
    }

    .top-banner-overlay.is-moved {
        transform: translateX(350px);
    }
    .top-banner-overlay.is-moved::before {
        content: "";
        position: absolute;
        top: 0;
        bottom: 0;
        right: 100%;
        width: 20px;
        box-shadow: 3px 0 10px rgba(0, 0, 0, .75);
    }
/*  예약폼 */
    div.elem-group {
        margin: 20px 0;
    }

    div.elem-group.inlined {
        width: 49%;
        display: inline-block;
        float: left;
        margin-left: 1%;
    }

    label {
        display: block;
        font-family: "Lato", sans-serif;
        padding-bottom: 10px;
        font-size: medium;
    }

    input {
        border: 2px solid #777;
        box-sizing: border-box;
        font-size: small;
        /*font-family: 'Nanum Gothic';*/
        /*width: 150%;*/
    }

    div.elem-group.inlined input {
        width: 95%;
        display: inline-block;
    }

    hr {
        border: 1px dotted #ccc;
    }
    h1{
        text-align: center;
    }

    button {
        height: 30px;
        width: 60px;
        background: orange;
        border: 2px solid white;
        color: white;
        font-size: small;
        font-family: 'Nanum Gothic';
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        border: 2px solid black;
    }

</style>

<%-- 예약폼 영역 --%>
<section class="top-banner">
    <div class="top-banner-overlay">
        <h1 class="text-white">예약하기</h1>

        <form class="form-proup" action="reservation.php" method="post">


            <div class="elem-group inlined">
                <label class="text-white" for="checkin-date">Check-in Date</label>
                <input type="date" id="checkin-date" name="checkin" placeholder="Select date" required>
            </div>
            <div class="elem-group inlined">
                <label class="text-white" for="checkout-date">Check-out Date</label>
                <input type="date" id="checkout-date" name="checkout" placeholder="Select date" required>
            </div>
                <hr>
                <div class="elem-group inlined">
                    <label class="text-white" for="adult">Adults</label>
                    <input type="number" id="adult" name="total_adults" placeholder="2" min="1" required>
                </div>
        </form>
        <div class="elem-group inlined">
            <button class="text-white" type="submit">검색</button>
        </div>
    </div>
</section>

<script>
    var currentDateTime = new Date();
    var year = currentDateTime.getFullYear();
    var month = (currentDateTime.getMonth() + 1);
    var date = (currentDateTime.getDate() + 1);

    if(date < 10) {
        date = '0' + date;
    }
    if(month < 10) {
        month = '0' + month;
    }

    var dateTomorrow = year + "-" + month + "-" + date;
    var checkinElem = document.querySelector("#checkin-date");
    var checkoutElem = document.querySelector("#checkout-date");

    checkinElem.setAttribute("min", dateTomorrow);

    checkinElem.onchange = function () {
        checkoutElem.setAttribute("min", this.value);
    }
</script>



<jsp:include page="/WEB-INF/views/common/footer.jsp"/>



			pageEncoding="UTF-8" %>
<html>
<head>
	<title>CRUD Hotel</title>
</head>
<body>
	<h1>CRUD Hotel</h1>
</body>
</html>

