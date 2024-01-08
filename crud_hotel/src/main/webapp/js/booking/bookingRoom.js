// function updateButton(radio) {
//     document.getElementById('dropdownRadioButton1').innerText = radio.value;
// }
//
// // 스크롤 요소 전부 다 보이게 설정
// var scrollableDiv = document.querySelector('.overflow-auto');
// scrollableDiv.scrollTop = scrollableDiv.scrollHeight;
//
// // 객실 데이터를 나타내는 배열 (실제 데이터로 교체해야 합니다)
// var rooms = [
//     { type: 'standard'},
//     { type: 'premier'},
//     { type: 'suite'}
// ];
//
// // 객실 유형에 따라 필터링하고 결과를 표시하는 함수
// function filterRooms(type) {
//     var filteredRooms = rooms.filter(function(room) {
//         return room.type === type;
//     });
//
//     // 필터링된 객실을 페이지에 표시하는 코드를 여기에 작성합니다.
//     // 예를 들어, filteredRooms 배열을 사용하여 HTML을 생성하고
//     // .room-card 컨테이너 내부에 삽입할 수 있습니다.
// }
//
// // 버튼 클릭 이벤트 리스너를 추가하여 객실 유형에 따라 필터링
// // document.getElementById('standard-btn').addEventListener('click', function() {
// //     filterRooms('standard');
// // });
// // document.getElementById('premier-btn').addEventListener('click', function() {
// //     filterRooms('premier');
// // });
// // document.getElementById('suite-btn').addEventListener('click', function() {
// //     filterRooms('suite');
// // });
//
// // 페이지 로드 시 예약 가능 여부 확인
// $(document).ready(checkRoomAvailability);
//
// function checkRoomAvailability() {
//     const roomsToCheck = [
//         "A201", "A202", "A203", "A204", "A205", "A206", "T301", "T302", "A303", "A304", "T305", "T306",
//         T306",
//         "A201", "A202", "A203", "A204", "A205", "A206""A201", "A202", "A203", "A204", "A205", "A206", "T301", "T302", "A303", "A304", "T305", "
//     ];
//     roomsToCheck.forEach(bookingRoomNum => {
//         // jQuery의 $.ajax를 사용하여 POST 요청을 보냄
//         $.ajax({
//             url: `${contextPath}/room/roomStandard/roomStandardCheck`,
//             type: 'POST',
//             data: { bookingRoomNum: bookingRoomNum },
//             success: function(response) {
//                 console.log(response);
//                 const statusSpan = document.querySelector(`.room-card[data-room-id="${bookingRoomNum}"]`);
//
//                 if(statusSpan !== null) {
//                     if (response === bookingRoomNum) {
//                         // 예약된 경우, 해당 객실 카드에 reserved 클래스 추가
//                         statusSpan.addClass('reserved');
//                     }
//                 }
//             },
//             error: function(xhr, status, error) {
//                 console.error('Error:', error);
//             }
//         });
//     })
// }
//
//
//
