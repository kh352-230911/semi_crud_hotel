function updateButton(radio) {
    document.getElementById('dropdownRadioButton').innerText = radio.value;
}

// 스크롤 요소 전부 다 보이게 설정
var scrollableDiv = document.querySelector('.overflow-auto');
scrollableDiv.scrollTop = scrollableDiv.scrollHeight;

// 객실 데이터를 나타내는 배열 (실제 데이터로 교체해야 합니다)
var rooms = [
    { type: 'standard'},
    { type: 'premier'},
    { type: 'suite'}
];

// 페이지 로드 시 예약 가능 여부 확인
$(document).ready(checkRoomAvailability);

function checkRoomAvailability() {
    const roomsToCheck = [
        "A201", "A202", "A203", "A204", "A205", "A206", "T301", "T302", "A303", "A304", "T305", "T306",
        "T401", "T402", "Q403", "Q404", "Q405", "Q406", "T501", "T502", "Q503", "Q504", "Q505", "Q506",
        "Q601", "Q602", "Q603", "Q604", "Q605", "Q606"
    ];
    roomsToCheck.forEach(bookingRoomNum => {
        // jQuery의 $.ajax를 사용하여 POST 요청을 보냄
        $.ajax({
            url: `${contextPath}/room/roomStandard/roomStandardCheck`,
            type: 'POST',
            data: { bookingRoomNum: bookingRoomNum },
            success: function(response) {
                console.log(response);

                const statusSpan = document.querySelector(`.room-card`);
                const statusRoom = document.querySelector(`.room-card[data-room-id="${bookingRoomNum}"]`);

                if((statusSpan && statusRoom )!== null) {
                    if (response === bookingRoomNum) {
                        // 예약된 경우, 해당 객실 카드에 hidden 클래스 추가
                        statusSpan.addClass('hidden');
                    }
                }
            },
            error: function(xhr, status, error) {
                console.error('Error:', error);
            }
        });
    })
}



