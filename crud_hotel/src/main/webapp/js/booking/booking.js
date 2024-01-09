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
var checkinElem = document.querySelector("#checkin-date");
var checkoutElem = document.querySelector("#checkout-date");

checkinElem.setAttribute("min", dateTomorrow);

checkinElem.onchange = function () {
    checkoutElem.setAttribute("min", this.value);
}

// radio 버튼 내용 변경 적용
function updateButton(radio) {
    document.getElementById('dropdownRadioButton').innerText = radio.value;
}



// document.querySelector(".roomSearch").addEventListener('click', (e) => {
//     $.ajax({
//         url: '${pageContext.request.contextPath}/booking/CheckLoginStatusServlet',
//         type: 'GET',
//         success: function(response) {
//             // 서블릿으로부터 받은 응답을 처리합니다.
//             var isLogin = response.trim();
//             if (!isLogin) {
//                 alert('로그인을 먼저 해주세요.😅');
//                 window.location.href = `${pageContext.request.contextPath}/member/memberLogin`;
//             } else {
//                 window.location.href = `${pageContext.request.contextPath}/booking/bookingRoom`;
//             }
//         }
//     });
// })




