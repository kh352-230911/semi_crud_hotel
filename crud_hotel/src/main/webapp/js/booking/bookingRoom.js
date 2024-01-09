
// function updateButton(radio) {
//     document.getElementById('dropdownRadioButton').innerText = radio.value;
// }

// 스크롤 요소 전부 다 보이게 설정
var scrollableDiv = document.querySelector('.overflow-auto');
scrollableDiv.scrollTop = scrollableDiv.scrollHeight;

// 객실 데이터를 나타내는 배열 (실제 데이터로 교체해야 합니다)

// 페이지 로드 시 예약 가능 여부 확인
// $(document).ready(checkRoomAvailability);
//
// function checkRoomAvailability() {
//     const roomsToCheck = [
//         "A201", "A202", "A203", "A204", "A205", "A206", "T301", "T302", "A303", "A304", "T305", "T306",
//         "T401", "T402", "Q403", "Q404", "Q405", "Q406", "T501", "T502", "Q503", "Q504", "Q505", "Q506",
//         "Q601", "Q602", "Q603", "Q604", "Q605", "Q606"
//     ];
//     roomsToCheck.forEach(bookingRoomNum => {
//         // jQuery의 $.ajax를 사용하여 POST 요청을 보냄
//         $.ajax({
//             url: `${contextPath}/room/roomStandard/`,
//             type: 'POST',
//             data: { bookingRoomNum: bookingRoomNum },
//             success: function(response) {
//                 console.log(response);
//
//                 const statusSpan = document.querySelector(`.room-card`);
//                 const statusRoom = document.querySelector(`.room-card[data-room-id="${bookingRoomNum}"]`);
//
//                 if((statusSpan && statusRoom )!== null) {
//                     if (response === bookingRoomNum) {
//                         statusSpan.addClass('hidden');
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
//
//
//
//
// function checkRoomAvailability() {
//     const roomsToCheck = [
//         "A201", "A202", "A203", "A204", "A205", "A206", "T301", "T302", "A303", "A304", "T305", "T306",
//         "T401", "T402", "Q403", "Q404", "Q405", "Q406", "T501", "T502", "Q503", "Q504", "Q505", "Q506",
//         "Q601", "Q602", "Q603", "Q604", "Q605", "Q606"
//     ];
//     roomsToCheck.forEach(bookingRoomNum => {
//         $.ajax({
//             url: `${contextPath}/booking/bookingRoom/check`,
//             type: 'POST',
//             data: { bookingRoomNum: bookingRoomNum },
// <<<<<<< HEAD
//             success: function(response) {
//                 console.log(response);
//                 // 서버에서 받은 데이터에서 객실 번호들만 추출
//                 const bookedRooms = response.map(booking => booking.rooms.map(room => room.roomNum)).flat();
//                 console.log(bookedRooms);
//
//                 // 예약된 객실과 roomsToCheck 비교
//                 const statusRoom = $(`.room-card[data-room-id="${bookingRoomNum}"]`);
//                 console.log(statusRoom);
//
//                 if (bookedRooms.includes(bookingRoomNum)) {
//                     // 예약된 경우, 해당 객실 카드에 hidden 클래스 추가
//                     statusRoom.addClass('hidden');
//                 }
//             }
//         });
// =======
//         success: function(response) {
//             console.log(response);
//
//             // jQuery 선택자를 사용하여 해당 객실 카드 선택
//             const statusRoom = $(`.room-card[data-room-id="${bookingRoomNum}"]`);
//             console.log(statusRoom);
//
//             if (response === bookingRoomNum) {
//                 // 예약된 경우, 해당 객실 카드에 hidden 클래스 추가
//                 statusRoom.addClass('hidden');
//             }
//         }
//     });
// >>>>>>> 7903e0196154513573e0d77e6c410e40a7666eb0
//     });
// }
