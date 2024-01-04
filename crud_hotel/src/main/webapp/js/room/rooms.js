// 객실 페이지 썸네일 사진클릭이 메인 사진으로 변경
function updateMainImage(src) {
    document.getElementById('main-image').src = src;
}

// 객실 목록 클릭시, 각 객실이 예약 가능한지 예약 불가인지 확인
// 스탠다드
document.querySelector('#dropdownDefaultButton1').addEventListener('click', (e) => {
    const roomsToCheck = ["A201", "A202", "A203", "A204", "A205", "A206", "T301", "T302", "A303", "A304", "T305", "T306"];
    roomsToCheck.forEach(bookingRoomNum => {
        $.ajax({
            url: `${contextPath}/room/roomStandard/roomStandardCheck`, // 서블릿 URL
            type: 'GET',
            data: { bookingRoomNum: bookingRoomNum },
            success: function(response) {
                    // console.log(response);
                    const statusSpan = document.querySelector(`.roomStatus[data-roomnum="${bookingRoomNum}"]`);
                    const statusDot = document.querySelector(`.status-dot[data-roomnum="${bookingRoomNum}"]`);

                    // 예약된 방 목록에 현재 방 번호가 있다면 예약불가, 그렇지 않으면 예약가능으로 설정
                    if (response === bookingRoomNum) {
                        statusSpan.textContent = "예약불가";
                        statusSpan.classList.remove('bg-green-900', 'text-green-300');
                        statusSpan.classList.add('bg-red-900', 'text-red-300');
                        statusDot.classList.remove('bg-green-500');
                        statusDot.classList.add('bg-red-500');
                    } else {
                        statusSpan.textContent = "예약가능";
                        statusSpan.classList.remove('bg-red-900', 'text-red-300');
                        statusSpan.classList.add('bg-green-900', 'text-green-300');
                        statusDot.classList.remove('bg-red-500');
                        statusDot.classList.add('bg-green-500');
                    }
            }
        })
    })

});

// 프리미어
// document.querySelector('#dropdownDefaultButton2').addEventListener('click', (e) => {
//     let roomsToCheck = ["T401", "T402", "Q403", "Q404", "Q405", "Q406", "T501", "T502", "Q503", "Q504", "T501", "T502"]; // This can be dynamically generated
//     $.get("CheckAvailability", { roomNumbers: roomsToCheck }, function(data, status){
//         // Update your UI with the data returned from the server
//     });
// });
//
// // 스위트룸
// document.querySelector('#dropdownDefaultButton3').addEventListener('click', (e) => {
//     let roomsToCheck = ["Q601", "Q602", "Q603", "Q604", "Q605", "Q606"]; // This can be dynamically generated
//     $.get("CheckAvailability", { roomNumbers: roomsToCheck }, function(data, status){
//         // Update your UI with the data returned from the server
//     });
// });

// 예상되는 availability 값: 'available' 또는 'unavailable'
// function updateRoomStatus(availability) {
//     const statusSpan = $(".roomStatus");
//     const statusDot = statusSpan.find(".status-dot");
//
//     if(availability === 'available') {
//         statusSpan.text("예약가능").removeClass("bg-red-900 text-red-300").addClass("bg-green-900 text-green-300");
//         statusDot.removeClass("bg-red-500").addClass("bg-green-500");
//     } else if(availability === 'unavailable') {
//         statusSpan.text("예약불가").removeClass("bg-green-900 text-green-300").addClass("bg-red-900 text-red-300");
//         statusDot.removeClass("bg-green-500").addClass("bg-red-500");
//     }
// }