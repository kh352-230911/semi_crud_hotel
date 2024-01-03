
document.loginFrm.addEventListener('submit', (e) => {
    const saveId = e.target.saveId;
    const id = e.target.id;
    //아이디저장 체크시
    if(saveId.checked) {
        // 키,값으로 로컬저장소에 저장
        localStorage.setItem('saveId', id.value);
    }
    else {
        // 아이디저장 체크해제하면 로컬저장소의 해당키 제거
        localStorage.removeItem('saveId');
    }
});
// 다시 로그인 페이지 로드시
const saveId = localStorage.getItem('saveId');
if(saveId){
    document.querySelector('#id').value = saveId;
    document.querySelector('#saveId').checked = true;
}