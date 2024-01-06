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

    // setSelectedRoom(radio.value);
}

// function setSelectedRoom(value) {
//     // AJAX 요청 생성
//     var xhr = new XMLHttpRequest();
//     xhr.open("POST", `${contextPath}/`, true);
//     xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
//
//     // 서버로 데이터 전송
//     xhr.send("selectedRoom=" + value);
//
//     // 요청 처리 완료 후 동작
//     xhr.onload = function() {
//         if (xhr.status == 200) {
//             console.log("Room successfully updated to: " + value);
//         } else {
//             console.error("Error updating room");
//         }
//     };
// }



