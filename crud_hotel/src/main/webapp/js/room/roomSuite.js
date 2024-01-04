// 객실 페이지 썸네일 사진클릭이 메인 사진으로 변경
function updateMainImage(src) {
    document.getElementById('main-image').src = src;
}

// 스위트룸
document.querySelector('#dropdownDefaultButton3').addEventListener('click', (e) => {
    const roomsToCheck = ["Q601", "Q602", "Q603", "Q604", "Q605", "Q606"]; // This can be dynamically generated
    roomsToCheck.forEach(bookingRoomNum => {
        $.ajax({
            url: `${contextPath}/room/roomStandard/roomStandardCheck`, // 서블릿 URL
            type: 'POST',
            data: {bookingRoomNum: bookingRoomNum},
            success: function (response) {
                // console.log(response);
                const statusSpan = document.querySelector(`.roomStatus[data-roomnum="${bookingRoomNum}"]`);
                const statusDot = document.querySelector(`.status-dot[data-roomnum="${bookingRoomNum}"]`);

                // 해당 요소가 null 이 아닐때만 실행
                if (statusSpan && statusDot) {
                    // 예약된 방 목록에 현재 방 번호가 있다면 예약불가, 그렇지 않으면 예약가능으로 설정
                    if (response === bookingRoomNum) {
                        statusSpan.textContent = "예약불가";
                        statusSpan.classList.remove('bg-green-900', 'text-green-300');
                        statusSpan.classList.add('bg-red-900', 'text-red-300');
                        statusDot.classList.remove('bg-green-500');
                        statusDot.classList.add('bg-red-500');
                    }

                    if (response !== bookingRoomNum) {
                        statusSpan.textContent = "예약가능";
                        statusSpan.classList.remove('bg-red-900', 'text-red-300');
                        statusSpan.classList.add('bg-green-900', 'text-green-300');
                        statusDot.classList.remove('bg-red-500');
                        statusDot.classList.add('bg-green-500');
                    }
                }
            }
        })
    })
});